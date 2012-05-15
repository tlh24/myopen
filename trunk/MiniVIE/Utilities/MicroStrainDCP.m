classdef MicroStrainDCP
    % Methods for the 3DM-GX2® Data Communications Protocol
    
    properties
    end
    methods (Static)
        function info = getBaseStationInfo(s)
            fprintf('Querying Base Station at: %s\n',s.Port);
            info.ModelNumber = MicroStrainDCP.getModelNumber(s);
            info.SerialId = MicroStrainDCP.getSerialId(s);
            info.RfChannel = MicroStrainDCP.getRfChannel(s);
            info.FwVersion = MicroStrainDCP.getFwVersion(s);
        end
        function value = getFwVersion(s)
            value = MicroStrainDCP.readBaseStationEeprom(s,108);
            LSBMSB = typecast(uint16(value),'uint8');
            LSB = LSBMSB(1);
            MSB = LSBMSB(2);
            fprintf('Firmware version is: %d.%02d\n',MSB,LSB);
        end
        function value = getSerialId(s)
            value = MicroStrainDCP.readBaseStationEeprom(s,114);
            fprintf('Serial Id is: %d\n',value);
        end
        function value = getRfChannel(s)
            value = MicroStrainDCP.readBaseStationEeprom(s,90);
            fprintf('RF Channel # is: %d\n',value);
        end
        function setRfChannel(s,value)
            MicroStrainDCP.getRfChannel(s);
            fprintf('Setting RF Channel # to: %d\n',value);
            MicroStrainDCP.writeBaseStationEeprom(s,90,value);
            MicroStrainDCP.getRfChannel(s);
        end
        function type = getModelNumber(s)
            value = MicroStrainDCP.readBaseStationEeprom(s,112);
            if value == 2615
                type = 'USB Base Station';
            elseif value == 2616
                type = 'Analog Base Station';
            else
                type = 'Unknown';
            end
            fprintf('Base Station Type is: %s\n',type);
        end
        function value = readBaseStationEeprom(s,address)
            MicroStrainDCP.flushReadBuffer(s);
            % ensure buffer stays empty (i.e. we're not streaming)
            assert(isempty(MicroStrainDCP.flushReadBuffer(s)));
            
            assert(address >= 0);
            assert(address < 255);
            addressByte = uint8(address);
            
            cmdByte = uint8(hex2dec('72'));
            fwrite(s,[cmdByte addressByte],'uint8');
            
            numResponseBytes = 3;
            [reply count msg] = fread(s,numResponseBytes,'uint8');
            if ~isempty(msg)
                fprintf(2,'%s\n',msg);
            end
            
            assert(count == numResponseBytes);
            assert(reply(1) == cmdByte);
            MSB = reply(2);
            LSB = reply(3);
            value = typecast(uint8([LSB MSB]),'uint16');
        end
        function getNodeAutoStartMode(s,nodeAddress)
            value = MicroStrainDCP.readNodeEeprom(s,nodeAddress,hex2dec('FCA6'));
            fprintf('Automatic Startup Mode is: %d\n',value);
        end
        function setNodeAutoStartMode(s,nodeAddress,value)
            value = MicroStrainDCP.readNodeEeprom(s,nodeAddress,hex2dec('FCA6'));
            fprintf('Automatic Startup Mode is: %d\n',value);
        end
        function [value checkSum] = readNodeEeprom(s,nodeAddress, eepromAddress)
            MicroStrainDCP.flushReadBuffer(s);
            % ensure buffer stays empty (i.e. we're not streaming)
            assert(isempty(MicroStrainDCP.flushReadBuffer(s)));
            
            assert(nodeAddress >= 0);
            assert(nodeAddress < 2^16);
            addressWord = uint16(nodeAddress);

            assert(eepromAddress >= 0);
            assert(eepromAddress < 2^16);
            eepromWord = uint16(eepromAddress);
            
            cmdByte = uint8(hex2dec('03'));
            fwrite(s,[cmdByte ...
                typecast(swapbytes(addressWord),'uint8')...
                typecast(swapbytes(eepromWord),'uint8')...
                ],'uint8');
            
            numResponseBytes = 5;
            [reply count msg] = fread(s,numResponseBytes,'uint8');
            if ~isempty(msg)
                fprintf(2,'%s\n',msg);
            end
            
            assert(count == numResponseBytes);
            assert(reply(1) == cmdByte);
            MSB = reply(2);
            LSB = reply(3);
            value = typecast(uint8([LSB MSB]),'uint16');
            MSB = reply(2);
            LSB = reply(3);
            checkSum = typecast(uint8([LSB MSB]),'uint16');
            
            
        end
        function writeBaseStationEeprom(s,address,value)
            MicroStrainDCP.flushReadBuffer(s);
            % ensure buffer stays empty (i.e. we're not streaming)
            assert(isempty(MicroStrainDCP.flushReadBuffer(s)));
            
            assert(address >= 0);
            assert(value < 2^16);
            addressByte = uint8(address);
            
            LSBMSB = typecast(uint16(value),'uint8');
            LSB = uint8(LSBMSB(1));
            MSB = uint8(LSBMSB(2));
            
            cmdByte = uint8(hex2dec('77'));
            fwrite(s,[cmdByte addressByte MSB LSB],'uint8');
            
            numResponseBytes = 1;
            [reply count msg] = fread(s,numResponseBytes,'uint8');
            if ~isempty(msg)
                fprintf(2,'%s\n',msg);
            end
            
            assert(count == numResponseBytes);
            assert(reply(1) == cmdByte);
            
            fprintf('Wrote to Address %d: MSB=%d LSB=%d\n',addressByte,MSB,LSB);
                        
        end
        function response = flushReadBuffer(s)
            numAvailable = s.BytesAvailable;
            if numAvailable > 0
                response = fread(s,numAvailable);
            else
                response = [];
            end
        end
    end
end