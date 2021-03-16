clear; 
close all; 
clc; 

%y'=f(x,y) con funzione generatrice 

f=@(x,y)(-15*y); 
y0=1; 
x0=0; 

%soluzione 

Y =@(x)exp(-15*x); 
xf=1;
u0=y0; 

%passo di integrazione 
h=0.05; %precisione 

%Eulero esplicito 

[x1,u1] = eulero_esplicito(f,[x0,xf],u0,h);
%[x2,u2] = eulero_esplicito(f,[x0,xf],u0);

%Eulero implicito 
[x2, u2] = eulero_implicito(f, [x0,xf], u0); 


x=linspace(0,1,100); 

plot(x,Y(x),x1,u1,'g--*',x2,u2,'r-.d'); %piccoli rombi 
grid; 
legend('Soluzione analitica', 'passo h=0.05', 'passo default'); 