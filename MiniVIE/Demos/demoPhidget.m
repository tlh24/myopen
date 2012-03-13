addpath('C:\usr\Dropbox\Human Robotics Interaction Class Dorsey\Code\Phidget')
addpath('C:\usr\Myopen\MiniVIE');
addpath('C:\usr\Myopen\MiniVIE\Utilities');
addpath('C:\usr\Dropbox\Human Robotics Interaction Class Dorsey\Code\CytonI');

hPhidget = PhidgetAccel();
hPhidget.initialize
hCyton = CytonI;

%%
while StartStopForm
    accelData = hPhidget.getdata;
    fprintf(' Accel: X: %8.4f Y: %8.4f Z: %8.4f\n',accelData);
    hCyton.setJointIdValue(2,accelData(1)*pi/2);
    hCyton.setJointIdValue(3,pi/2);
    hCyton.setJointIdValue(4,accelData(2)*pi/2);
    pause(0.05);
end
    