J = 0.02;
b = 0.1;
K = 0.005;
R = 1;
L = 1;
s =tf('s');
P_motor = K /((J * s + b)*(L * s + R)+ K ^ 2);

% Kp = 100;%±ÈÀý¿ØÖÆ
% C = pid(Kp);
% sys_cl = feedback(C * P_motor,1);
% t = 0:0.01:5;
% step(sys_cl,t)
% grid
% title('Step Response with Proportional Control')

Kp = 600;
Ki = 200;
Kd = 100;
C = pid(Kp,Ki, Kd);
sys_cl =feedback(C * P_motor,1);
step(sys_cl,[0:0.01:4])
title('PID Control with Large Ki and Large Kd')