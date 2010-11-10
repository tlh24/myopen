

figure(1); clf
set(gcf,'Renderer','zbuffer','DoubleBuffer','on')%,...
    %'MenuBar','none')
hAxes = gca
KChain = f_SetupKinematics(hAxes);
axes(hAxes(1));
axis('off');
set(gca,'CameraUpVector',[0 1 0])
axis([0 .3 0.35 0.7 -.1 .2])
daspect([1 1 1])
lighting gouraud
material dull
hlight = camlight('headlight')

% camproj perspective 
% camva(45)
% 
% % campos([ -0.0006    0.7028    0.0419]);
% campos([ -0.0006    0.7    0.05]);
% camtarget([0.2257    0.3839    0.0637])
% camlight(hlight,'headlight')

a = linspace(0,2*pi,50);
b = (1-cos(a))/2;
flex_angle = b; %% 0 to 1

nLoop = 1;
for iloop = 1:nLoop
    for iAngle = 1:length(flex_angle)
    KChain = f_SetJointAngle(KChain,4,3,flex_angle(iAngle));
    f_KChain_Redraw(KChain,2,0,0);
    drawnow
    end
end

