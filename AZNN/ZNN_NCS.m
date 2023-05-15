function y=ZNN_NCS(t,x)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
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
derta=Noise(t);%%噪声
E=a*x1+b;
% r=1;
global r
global c1
y=pinv(a)*(-r*PT(E,1e-5,c1)-da*x1-db+derta);
y=[y];
t
end









