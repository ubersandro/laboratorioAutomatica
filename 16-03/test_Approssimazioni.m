clear; 
close all; 
clc; 

%y'=f(x,y) con funzione generatrice 

f=@(x,y)(-15*y); 
y0=1; 

x0=0; 
xf=1;

%soluzione 

Y =@(x)exp(-15*x); 

u0=y0; 

%passo di integrazione 
h=0.005; %precisione 

[x1,u1] = eulero_esplicito(f,[x0,xf],u0,h);
[x2,u2] = eulero_implicito(f,[x0,xf],u0,h);

[x3, u3] = rungekutta2(f, [x0,xf], u0, h); 
[x4, u4] = rungekutta4(f, [x0,xf], u0, h); 
nu4= u4(1:length(u4)-1); 
[x5,u5] = ode45(f, x1, u0, odeset('InitialStep', 'h')); %attenzione al passo di campionamento
%sceglie il passo suo

%x=linspace(0,1,100); 

plot(x1,Y(x1),'m--',x1,u1,'g->',x2,u2,'r-<',x3,u3,'k-.', x4,nu4,'-v',x5,u5,'c-*')%, x4,u4,'y-'); %piccoli rombi 
grid; 
legend('Soluzione analitica', 'EuleroExp', 'EuleroImp', 'Runge-Kutta2', 'Runge-Kutta4', 'Ode45'); 
txt=sprintf("Passo di campionamento %d", h); 
title(txt); 