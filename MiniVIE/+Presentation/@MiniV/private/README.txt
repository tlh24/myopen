This is a MATLAB based Arm model using the surface geometry from Poser(R)

-----------------------------------------------------------------------------
A user interface was created using MATLAB v7 GUIDE.  Just type:

ArmControl

at the MATLAB command line to execute the program.  Features include running through
a sample range of motion ('Demo' button).  You can also save and load different states,
or arm configurations.  

Using the keyboard, certain motions can be controlled for the arm.  Example:

'a' -- Flex elbox
'z' -- Extend elbow
's' -- Flex wrist
'x' -- Extend wrist

Click on the figure window to make sure that no other buttons or controls are 
highlighted in order to use the keyboard control.

Programmers can modify the key assignments in the ArmControl file under the 'KeyAdjust' 
callback function.

The on-screen controls allow the Arm position to be adjusted.  Any configuration can be
saved by selecting 'Save State'


-----------------------------------------------------------------------------

Extensive control of the arm model can be done through the command line.  see 
'run_demo.m' for a walk-though of how the graphics objects are created and manipulated.

Using the 'f_Setup_Kinematics.m' function the Kinematic Arm can be brought into any custom 
MATLAB application.

-RSA
5/25/06
