J = 0.02;
b = 0.1;
K = 0.005;
R = 1;
L = 1;
s =tf('s');
P_motor = K /((J * s + b)*(L * s + R)+ K ^ 2);%原始传递函数曲线
linearSystemAnalyzer('step',P_motor,0:0.1:5);
rP_motor=0.05/(s+1)         %以s = -1 处极点为主导极点的简化曲线