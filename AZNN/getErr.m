%% 
function y=getErr(u,x)
xstar=[3*sin(u)*sin(5*u)-cos(u)*cos(4*u)  3*sin(5*u)*cos(u)+sin(u)*cos(4*u)];
y=norm(xstar-x);
end