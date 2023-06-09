%%
tspan=linspace(0,10,1000);
options=odeset('AbsTol',1e-4,'RelTol',1e-4);
%% 
%%
T=[];
X=[];
x0=rand(2,1)*2;
[t,x]=ode45(@ZNN,tspan,x0,options);
T=[T;t];
X=[X;x];
x1=[x0;0;0];
[t,x]=ode45(@IEZNN,tspan,x1,options);
T=[T;t];
X=[X;x(:,1:2)];
[t,x]=ode45(@ZNN_NCS,tspan,x0,options);
T=[T;t];
X=[X;x(:,1:2)];
[t,x]=ode45(@JFPTZNN,tspan,x1,options);
T=[T;t];
X=[X;x(:,1:2)];
