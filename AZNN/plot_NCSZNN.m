function y=plot_NCSZNN(t,x,num)
for i =1:num*1000
   e(i)=getErr(t(i),x(i,:)); 
end
d=1000;
t1=t(1:1000);
e=reshape(e,1000,num);
%% Theoretical solution£º
X=MX(t);
x1=X(1:d*1,:);

%% draw Err

semilogy(t1,e(:,1),'r-','linewidth',2);
hold on ;
semilogy(t1,e(:,2),'--','color',[1 0.64706 0],'linewidth',2);
hold on ;
semilogy(t1,e(:,3),'b:','linewidth',2);
if (num==4)
    semilogy(t1,e(:,4),'-.','color',[0.13333 0.5451 0.13333],'linewidth',2); 
end
%%
h=ylabel('$\left|\left|E(t)\right|\right|_F$');
set(h,'Interpreter','latex');
h=xlabel('$t/\rm{s}$');
set(h,'Interpreter','latex');
set(gca,'FontName','Times New Roman','FontSize',25,'linewidth',2);
%%%%%%%%%%
axis([0 10 1e-6 1e4]);
%%%%%%%%%%
% 

  %
    
    ax = gca;
    outerpos = ax.OuterPosition;

    ti = ax.TightInset; 
    left = outerpos(1) + ti(1);
    bottom = outerpos(2) + ti(2);
    ax_width = outerpos(3) - ti(1) - ti(3);
    ax_height = outerpos(4) - ti(2) - ti(4);
    ax.Position = [left bottom ax_width*0.99 ax_height];

if( num==3)
    h=legend('\gamma=2','\gamma=3','\gamma=4');
else
    h=legend('OZNN','IEZNN','ZNN-NCS','IEZNN-NCS');
set(h,'FontName','Times New Roman','FontSize',20);

%% neural state 1
figure;
plot(t1,x(1:d*1,1),'r-','linewidth',2);
hold on;
plot(t1,x(d*1+1:d*2,1),'--','color',[1 0.64706 0],'linewidth',2);

hold on;
plot(t1,x(d*2+1:d*3,1),'b:','linewidth',2);
hold on;
plot(t1,x(d*3+1:d*4,1),'-.','color',[0.13333 0.5451 0.13333],'linewidth',2);

hold on;
plot(t1,x1(:,1),'k-','linewidth',2);
h=xlabel('$t/\rm{s}$');
set(h,'Interpreter','latex');
h=ylabel('$x_{1}(t)$');
set(h,'Interpreter','latex');
%%%%%%%%%%%
axis([0 10 -15 25]);
%%%%%%%%%%%
set(gca,'FontName','Times New Roman','FontSize',25,'linewidth',2);
    ax = gca;
    outerpos = ax.OuterPosition; % [0, 0, 1, 1]

    ti = ax.TightInset; 
    left = outerpos(1) + ti(1);
    bottom = outerpos(2) + ti(2);
    ax_width = outerpos(3) - ti(1) - ti(3);
    ax_height = outerpos(4) - ti(2) - ti(4);
    ax.Position = [left bottom ax_width*0.99 ax_height];
h=legend('OZNN','IEZNN','ZNN-NCS','IEZNN-NCS','theory resolution');
set(h,'FontName','Times New Roman','FontSize',20);

%% neural state  2
figure;
plot(t1,x(1:d*1,2),'r-','linewidth',2);
hold on;
plot(t1,x(d*1+1:d*2,2),'--','color',[1 0.64706 0],'linewidth',2);

hold on;
plot(t1,x(d*2+1:d*3,2),'b:','linewidth',2);
hold on;
plot(t1,x(d*3+1:d*4,2),'-.','color',[0.13333 0.5451 0.13333],'linewidth',2);

hold on;
plot(t1,x1(:,end),'k-','linewidth',2);
%%%%%%%%%%%
axis([0 10 -15 25]);
%%%%%%%%%%%
h=xlabel('$t/\rm{s}$');
set(h,'Interpreter','latex');
h=ylabel('$x_{2}(t)$');
set(h,'Interpreter','latex');
% axis([0 10 -5 10]);
set(gca,'FontName','Times New Roman','FontSize',25,'linewidth',2);
    ax = gca;
    outerpos = ax.OuterPosition; % [0, 0, 1, 1]

    ti = ax.TightInset; 
    left = outerpos(1) + ti(1);
    bottom = outerpos(2) + ti(2);
    ax_width = outerpos(3) - ti(1) - ti(3);
    ax_height = outerpos(4) - ti(2) - ti(4);
    ax.Position = [left bottom ax_width*0.99 ax_height];
h=legend('OZNN','IEZNN','ZNN-NCS','IEZNN-NCS','theory resolution');
set(h,'FontName','Times New Roman','FontSize',20);
end
end