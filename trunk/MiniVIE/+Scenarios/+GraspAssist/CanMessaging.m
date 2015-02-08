classdef CanMessaging
    methods (Static = true)
        function canOut = string2Can(strIn, canAddress)
            % Convert a text string into CAN compatible message.
            % Format is:
            % T [Extended CAN Addressing Mode]
            % XXXXXXXX [CAN Address in Hex 0-F]
            % Number of Bytes [1-8]
            % Data Bytes in Hex Pairs 00-FF
            %
            %
            % Fully qualified:
            % Scenarios.GraspAssist.CanMessaging.string2Can('TEST')
            %
            % example: string2Can('TEST') produces: 'T1FFFFFFF454455354' in which 4
            % data bytes are indicated, followed by T=0x54 E=0x45 S=0x53 T=0x54
            
            if ~ischar(strIn) || isempty(strIn) || (length(strIn) > 8)
                error('Expected a string with 1-8 characters\n');
            end
            
            if nargin < 2
                %canAddress = '028C901A';
                %canAddress = '1FE53018';
                canAddress = '1FFFFFFF';
            end
            
            hexVals = dec2hex(uint8(strIn));
            canOut = sprintf('T%8s%d%s\n',canAddress,size(hexVals,1),hexVals');
            
            % DEBUG: For debugging show unconverted commands
            disp(strIn);
        end
    end
end

