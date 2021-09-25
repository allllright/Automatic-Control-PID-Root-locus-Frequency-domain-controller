J = 0.02;
b = 0.1;
K = 0.005;
R = 1;
L = 1;
s =tf('s');
P_motor = K /((J * s + b)*(L * s + R)+ K ^ 2);
controlSystemDesigner('rlocus', P_motor)