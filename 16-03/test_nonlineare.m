clear; clc; close all; 
clear; 
close all; 
clc; 

%y'=f(x,y) con funzione generatrice 

f=@(x,y)(-15*y); 
y0=1; 
x0=0; 

%soluzione 

Y =@(x,y)x*y; 
xf=5;
u0=y0; 

%passo di integrazione 
h=0.05; %precisione 

%Eulero esplicito 

[x1,u1] = eulero_esplicito(f,[x0,xf],u0,h);
%[x2,u2] = eulero_esplicito(f,[x0,xf],u0);

%Eulero implicito 
[x2, u2] = rungekutta2(f, [x0,xf], u0,h); 
%[x3, u3] = rungekutta4(f, [x0,xf], u0); 
[x3,u3] = ode45(f, [x0,xf], u0, odeset('InitialStep', 'h')); %attenzione al passo di campionamento
%sceglie il passo suo
%eulero_implicito(f, [x0,xf], u0); 


x=linspace(0,1,100); 

plot(x,Y(x),x1,u1,'g--*',x2,u2,'r-.d',x3,u3,'k--x')%, x4,u4,'y-'); %piccoli rombi 
grid; 
legend('Soluzione analitica', 'eulero expl', 'rk2', 'ode45'); 