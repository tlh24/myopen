classdef MiniV < hgsetget
    % classdef for MiniV Arm display.
    % Note that get and set methods are inherited from hgsetget
    %
    %   Usage:
    %         % Create a left arm with the body and scale = [1 1 1]
    %         hArm = Presentation.MiniV(hAxes,1,[1 1 1],1);
    %         axis(hAxes,[0 0.4 -0.4 0.4 0.3 0.7])
    %
    %         % Set the base of the Arm:
    %         hArm.setBaseFrame(makehgtform('translate',[0.3 -0.2 -0.1]))
    %
    %         % Set hand angles
    %         handAngles = rand(1,29)*180/pi;
    %         hUser.set_hand_angles_degrees(handAngles);
    %         % Set upper arm angles
    %         aUser = rand(1,7)*180/pi;
    %         hUser.set_upper_arm_angles_degrees(aUser)
    %         %redraw the display
    %         hUser.redraw
    %
    % $Log: MiniV.m  $
    % Revision 1.10 2010/10/08 19:58:57EDT Armiger, Robert S. (ArmigRS1-a) 
    % removed self reference
    % Revision 1.9 2010/09/29 13:42:20EDT Armiger, Robert S. (ArmigRS1-a) 
    % added ability to make movie
    % Revision 1.8 2010/09/04 18:27:47EDT armigrs1-a 
    % Added seperate arm / hand methods.  Consolidated methods
    properties
        id = mfilename;
        
        handle
        isWireframe = false;
        isTriad = false;
        isLeftArm = true;
        
        showBody = false;
        
        hBase
        
        aviobj = [];
    end
    
    methods
        function obj = MiniV(hAxes,isLeftArm,scale,showBody)
            % Create a MiniV class and initialize
            if nargin < 4
                obj.showBody = false;
            else
                obj.showBody = showBody;
            end
            if nargin < 3
                scale = [1 1 1];
            end
            if nargin >= 2
                obj.isLeftArm = isLeftArm;
            end
            if nargin < 1
                figure;
                hAxes = gca;
                view(0,0);
                axis equal
                camlight left
                axis([0 0.4 -0.4 0.4 0.3 0.7])
            end
            
            obj.handle = f_SetupKinematics(hAxes,obj.isLeftArm,scale,obj.showBody);
            
            ambient = 0.5;
            diffuse = 0.4;
            specular = 0.1;
            material([obj.handle(:).hPatch],[ambient diffuse specular]);
            set([obj.handle(:).hPatch],'FaceLighting','gouraud');
            set([obj.handle(:).hPatch],'FaceAlpha',1.0);
            
            if obj.showBody
                hStatic = [obj.handle(1).hStaticPatches];
                material(hStatic,[ambient diffuse specular]);
                set(hStatic,'FaceLighting','gouraud');
                set(hStatic,'FaceAlpha',1.0);
            end
            
            % Setup a global parent frame for moving dependant objects
            obj.hBase = hgtransform('Parent',hAxes);
            set([obj.handle(:).hPatch],'Parent',obj.hBase)
            if obj.showBody
                set(hStatic,'Parent',obj.hBase)
            end
            %set(hBase,'Matrix',makehgtform('translate',[0 -0.2 -0.1]))
            
            redraw(obj);
                        
        end
        function close(obj)
            % Cleanup and close MiniV object
            
            if any(ishandle([obj.handle.hPatch]))
                delete([obj.handle(:).hPatch]);
            end
            
            if any(ishandle([obj.handle.hTriad]))
                delete([obj.handle(:).hTriad]);
            end
            
            obj.handle = [];
            
        end
        function set_upper_arm_angles_degrees(obj,jointAngles)

            % P1
            % obj.handle(3).Joint_Param(2) = -jointAngles(1); %% *0; %% Shoulder FE (+ flexion)
            % obj.handle(3).Joint_Param(3) = -jointAngles(2) - 20; %% *0; %% Shoulder AdAb (+ adduction)
            % obj.handle(3).Joint_Param(1) = -jointAngles(3); %% *0; %% Humeral Rotation (+ external rot)
            
            % P2
            % obj.handle(3).Joint_Param(3) = -jointAngles(1); %% *0; %% Shoulder FE (+ flexion)
            % obj.handle(3).Joint_Param(2) =  jointAngles(2); %% *0; %% Shoulder AdAb (+ adduction, toward)
            % obj.handle(3).Joint_Param(1) =  jointAngles(3); %% *0; %% Humeral Rotation (+ internal rot)
            
            % obj.handle(5).Joint_Param(2) = jointAngles(5); %% *0; %% Wrist_Rot (+ supination)
            % obj.handle(5).Joint_Param(3) = -jointAngles(6); %% *0; %% Wrist_FE (+ flexion)
            % obj.handle(5).Joint_Param(1) = -jointAngles(7); %% *0; %% Wrist_Dev (+ Radial Dev)
            
            % MPL
            obj.handle(3).Joint_Param(3) = -jointAngles(1); %% *0; %% Shoulder FE (+ flexion)
            obj.handle(3).Joint_Param(2) =  jointAngles(2); %% *0; %% Shoulder AdAb (+ adduction, toward)
            obj.handle(3).Joint_Param(1) =  jointAngles(3); %% *0; %% Humeral Rotation (+ internal rot)
            
            obj.handle(4).Joint_Param(3) =  jointAngles(4); %% *0; %% Elbow Flexion (+ flexion)
            
            obj.handle(5).Joint_Param(3) =  jointAngles(5); %% *0; %% Wrist_Rot (+ supination)
            obj.handle(5).Joint_Param(1) =  jointAngles(7); %% *0; %% Wrist_FE (+ flexion)
            obj.handle(5).Joint_Param(2) =  jointAngles(6); %% *0; %% Wrist_Dev (+ Radial Dev)
            
        end
        function putdata(obj, jointAngles)
            % PUTDATA
            %
            % putdata(obj, jointAngles)
            %
            % Sets joint angles (radians)
            
            jointAngles = jointAngles * 180 / pi;
            set_upper_arm_angles_degrees(obj,jointAngles);
            set_hand_angles_degrees(obj,jointAngles);
            redraw(obj);
        end
        function set_hand_angles_degrees(obj,jointAngles)
            obj.handle(9).Joint_Param(3) = -jointAngles(8); %% *0; %% Index_MCP (+ Flexion)
            obj.handle(10).Joint_Param(3) = -jointAngles(9); %% *0; %% Index_PIP (+ Flexion)
            obj.handle(11).Joint_Param(3) = -jointAngles(10); %% *0; %% Index_DIP (+ Flexion)
            obj.handle(9).Joint_Param(1) =  jointAngles(11); %% *0; %% Index_AbAd (+ Toward Pinky)
            
            obj.handle(12).Joint_Param(3) = -jointAngles(12); %% *0; %% Middle_MCP (+ Flexion)
            obj.handle(13).Joint_Param(3) = -jointAngles(13); %% *0; %% Middle_PIP (+ Flexion)
            obj.handle(14).Joint_Param(3) = -jointAngles(14); %% *0; %% Middle_DIP (+ Flexion)
            obj.handle(12).Joint_Param(1) = jointAngles(15); %% *0; %% Middle_AbAd (+ Toward Pinky)
            
            obj.handle(15).Joint_Param(3) = -jointAngles(16); %% *0; %% Ring_MCP (+ Flexion)
            obj.handle(16).Joint_Param(3) = -jointAngles(17); %% *0; %% Ring_PIP (+ Flexion)
            obj.handle(17).Joint_Param(3) = -jointAngles(18); %% *0; %% Ring_DIP (+ Flexion)
            obj.handle(15).Joint_Param(1) =  jointAngles(19); %% *0; %% Ring_AbAd (+ Toward Pinky)
            
            obj.handle(18).Joint_Param(3) = -jointAngles(20); %% *0; %% Little_MCP (+ Flexion)
            obj.handle(19).Joint_Param(3) = -jointAngles(21); %% *0; %% Little_PIP (+ Flexion)
            obj.handle(20).Joint_Param(3) = -jointAngles(22); %% *0; %% Little_DIP (+ Flexion)
            obj.handle(18).Joint_Param(1) =  jointAngles(23); %% *0; %% Little_AbAd (+ Toward Pinky)
            
            obj.handle(6).Joint_Param(2) = jointAngles(24); %%-20; %% *0; %% Thumb_AbAd (+ Toward ???)
            obj.handle(6).Joint_Param(3) = jointAngles(25); %%*0; %% Thumb_FE (+ Flexion)
            obj.handle(6).Joint_Param(1) = jointAngles(26); %%*.5; %% *0; %% Thumb_Rot (+ Toward ???)
            
            obj.handle(7).Joint_Param(3) = -jointAngles(27); %% *0; %% Thumb_MCP (+ Flexion)
            obj.handle(8).Joint_Param(3) = -jointAngles(28); %% *0; %% Thumb_IP (+ Flexion)
            
            
        end
        function redraw(obj)
            
            hKChain = obj.handle;
            if ~obj.isLeftArm
                for i = 1:length(obj.handle)
                    hKChain(i).Joint_Param(2:3) = -hKChain(i).Joint_Param(2:3);
                end
            end
            
            f_KChain_Redraw(hKChain,2,obj.isWireframe,obj.isTriad);
        end
        function addframe(obj)
            if ~isempty(obj.aviobj)
                F = getframe(obj.hAxes.Parent);
                obj.aviobj = addframe(obj.aviobj,F);
            end
        end
        function setup_movie(obj,fname)
            obj.aviobj = avifile(fname,'compression','None');
        end
        function close_movie(obj)
            if ~isempty(obj.aviobj)
                obj.aviobj = close(obj.aviobj);
            end
        end
        function setBaseFrame(obj,Frame)
            % Method for changing the position and orientation of the arm
            % with respect to global
            
            assert(isequal(size(Frame),[4 4]),'Expected a 4x4 transformation');
            set(obj.hBase,'Matrix',Frame)
            
        end
    end
end
