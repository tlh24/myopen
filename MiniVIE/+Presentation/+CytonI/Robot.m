classdef Robot < handle
    % Parent Class Definition for Robot Objects
    methods (Abstract = true)
        %M = getKinematics(obj)
    end
    methods (Static = true)
        function A = DH_transformation(linkLength,linkTwist,linkOffset,jointAngle)
            % Compute homogeneous transformation A given Denavit-Hartenberg parameters:
            % linkLength    = a_i
            % linkTwist     = alpha_i
            % linkOffset    = d_i
            % jointAngle    = theta_i
            %
            % Created: Armiger Sep-2009
            
            c_theta = cos(jointAngle);
            s_theta = sin(jointAngle);
            
            c_alpha = cos(linkTwist);
            s_alpha = sin(linkTwist);
            
            A = [
                c_theta -s_theta*c_alpha  s_theta*s_alpha   linkLength*c_theta;
                s_theta  c_theta*c_alpha -c_theta*s_alpha   linkLength*s_theta;
                0        s_alpha          c_alpha           linkOffset;
                0        0                0                 1;];
        end
    end
end
