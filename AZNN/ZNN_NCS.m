function y=ZNN_NCS(t,x)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
syms u;
a=[sin(u) cos(u)
    -cos(u) sin(u)];
b=[-3*sin(5*u)
    -cos(4*u)];
x1=x(1:2);
x1=reshape(x1,2,1);
dota=diff(a);
dotb=diff(b);

u=t;
da=eval(dota);
db=eval(dotb);
a=eval(a);
b=eval(b);
derta=Noise(t);%%����
E=a*x1+b;
% r=1;
global r
global c1
y=pinv(a)*(-r*PT(E,1e-5,c1)-da*x1-db+derta);
y=[y];
t
end









