function y = MA(t)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
syms u;
a=[sin(u) cos(u)
    -cos(u) sin(u)];
u=t;
y=eval(a);
end

