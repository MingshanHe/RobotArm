function T_screw  = ScrewRokie(Radian)
%%Param:机器人自身变量
z1=0.182;z2=0.160;x2=0.040;z3=0.275;z4=0.025;x4=0.280;dT=0.073;
%d1=0.342;a1=0.040;a2=0.275;a3=0.025;d5=0.280;dt=0.073;
M = [ 0  0 1 x2+x4+dT;
      0 -1 0 0;
      1  0 0 z1+z2+z3+z4;
      0  0 0 1;];
theta1 = Radian(1);
theta2 = Radian(2);
theta3 = Radian(3);
theta4 = Radian(4);
theta5 = Radian(5);
theta6 = Radian(6);
%%Param:螺旋轴变量
%omega:旋转轴
omega1 = [0;0;1];omega2 = [0;1;0];omega3=[0;1;0];omega4 = [1;0;0];omega5 = [0;1;0];omega6 = [1;0;0];
%q:原点坐标系下该坐标系的位移
q1 = [0;0;z1];q2 = [x2;0;z1+z2];q3 = [x2;0;z1+z2+z3];q4 = [x2+x4;0;z1+z2+z3+z4];q5 = [x2+x4;0;z1+z2+z3+z4];q6 = [x2+x4;0;z1+z2+z3+z4];
%v:原点坐标系下该坐标系的线速度
v1 = [0;0;0];v2 = [-(z1+z2);0;x2];v3 = [-(z1+z2+z3);0;x2];v4 = [0;z1+z2+z3+z4;0];v5 = [-(z1+z2+z3+z4);0;x2+x4];v6 = [0;z1+z2+z3+z4;0];

%[S]:对应于各个关节的螺旋运动
S1mtr = get_S_matrix(omega1,v1);
S2mtr = get_S_matrix(omega2,v2);
S3mtr = get_S_matrix(omega3,v3);
S4mtr = get_S_matrix(omega4,v4);
S5mtr = get_S_matrix(omega5,v5);
S6mtr = get_S_matrix(omega6,v6);
%e:罗德里格公式，指数积的基础
e_theta1 = Rodrigues_formula(S1mtr,theta1);
e_theta2 = Rodrigues_formula(S2mtr,theta2);
e_theta3 = Rodrigues_formula(S3mtr,theta3);
e_theta4 = Rodrigues_formula(S4mtr,theta4);
e_theta5 = Rodrigues_formula(S5mtr,theta5);
e_theta6 = Rodrigues_formula(S6mtr,theta6);
%T:末端矩阵
T_screw = e_theta1*e_theta2*e_theta3*e_theta4*e_theta5*e_theta6*M



