J = 0.02;
b = 0.1;
K = 0.005;
R = 1;
L = 1;
s =tf('s');
P_motor = K /((J * s + b)*(L * s + R)+ K ^ 2);%ԭʼ���ݺ�������
linearSystemAnalyzer('step',P_motor,0:0.1:5);
rP_motor=0.05/(s+1)         %��s = -1 ������Ϊ��������ļ�����