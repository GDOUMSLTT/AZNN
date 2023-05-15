%%ZNN main
% clc;close all;clear;
% title1=('rnoise');
%%
tspan=linspace(0,10,1000);
options=odeset('AbsTol',1e-4,'RelTol',1e-4);
%% 无噪声 不同初始值出发 NCSZNN
%%
% global flag_Noise;
%% 0=nonoise 1=constant 2=tvnoise 3=rnoise
% % flag_Noise=2;
%%
% figure;
global r;
T=[];
X=[];
% for i =1:5
x0=rand(2,1)*2;
r=1;
[t,x]=ode45(@newZNN,tspan,x0,options);
T=[T;t];
X=[X;x];
x1=[x0;0;0];
r=2;
[t,x]=ode45(@newZNN,tspan,x0,options);
T=[T;t];
X=[X;x(:,1:2)];
r=3;
[t,x]=ode45(@newZNN,tspan,x0,options);
T=[T;t];
X=[X;x(:,1:2)];
r=4;
[t,x]=ode45(@newZNN,tspan,x0,options);
T=[T;t];
X=[X;x(:,1:2)];
% end
%%







