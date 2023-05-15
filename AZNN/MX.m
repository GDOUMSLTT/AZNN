function y= MX(t)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
syms u;
x=[3*sin(u)*sin(5*u)-cos(u)*cos(4*u)    3*sin(5*u)*cos(u)+sin(u)*cos(4*u)];
u=t;
y=eval(x);
end

