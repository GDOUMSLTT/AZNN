function y = MB(t)
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
syms u;
b=[-3*sin(5*u)
    -cos(4*u)];
u=t;
y=eval(b);


end

