function y = MB(t)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
syms u;
b=[-3*sin(5*u)
    -cos(4*u)];
u=t;
y=eval(b);


end

