function y = JFPTZNN(t,x)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
syms u;
global c1 c2;
global r;
a=[sin(u) cos(u)
    -cos(u) sin(u)];
b=[-3*sin(5*u)
    -cos(4*u)];
x1=x(1:2);
f_x=x(3:4);
x1=reshape(x1,2,1);
dota=diff(a);
dotb=diff(b);

u=t;
da=eval(dota);
db=eval(dotb);
a=eval(a);
b=eval(b);
derta=Noise(t);%%噪声
% r=1;
% f=1;
E=a*x1+b;
y=pinv(a)*(-r*PT(E,1e-5,c1)- r*PT(E,1e-5,c2).*(f_x)-da*x1-db+derta);
y=[y;abs(E)];
t
end







