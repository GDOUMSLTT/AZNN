function y = OZNN(t,x)
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
% r=1;
global r
y=pinv(a)*(-r*(a*x+b)-da*x-db+derta);
t
end







