function y = MA(t)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
syms u;
a=[sin(u) cos(u)
    -cos(u) sin(u)];
u=t;
y=eval(a);
end

