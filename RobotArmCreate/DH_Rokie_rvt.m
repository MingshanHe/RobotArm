clc
clear;
% +---+-----------+-----------+-----------+-----------+-----------+
% | j |     theta |         d |         a |     alpha |    offset |
% +---+-----------+-----------+-----------+-----------+-----------+
% |  1|         q1|          0|          0|          0|          0|
% |  2|         q2|      0.342|          0|          0|          0|
% |  3|         q3|          0|       0.04|     1.5708|          0|
% |  4|         q4|          0|      0.275|          0|          0|
% |  5|         q5|       0.28|      0.025|     1.5708|          0|
% |  6|         q6|          0|          0|    -1.5708|          0|
% |  7|         q7|          0|          0|     1.5708|          0|
% |  8|         q8|      0.073|          0|          0|          0|
% +---+-----------+-----------+-----------+-----------+-----------+
L0=Link([0, 0, 0, 0],'modified'); 
L1=Link([0, 0.342, 0, 0],'modified'); 
L2=Link([pi/2,0,0.04,pi/2],'modified');
L3=Link([0,0,0.275,0],'modified');
L4=Link([0 ,0.28,0.025,pi/2],'modified');
L5=Link([0 ,0,0,-pi/2],'modified');
L6=Link([0 ,0,0,pi/2],'modified');
L7=Link([0 ,0.073,0,0],'modified');

robot=SerialLink([L0,L1,L2,L3,L4,L5,L6,L7]);
robot.name='Rokie';
robot.display();
%robot.plot([0 ,0,pi/2 0 0 0 0 0]);
robot.teach([0 ,0,pi/2 0 0 0 0 0]);

