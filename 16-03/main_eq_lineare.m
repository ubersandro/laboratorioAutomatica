clear;
close all
% y'=f(x,y)

% funzione generatrice
f = @(x,y)(-15*y);
y0 = 1;
x0 = 0;

% soluzione

Y = @(x)exp(-15*x);

% intervallo di integrazione

xf = 1;

u0 = y0;

% passo di integrazione

h = 0.05/4;

% Eulero Esplicito

[x1,u1] = eulero_esp(f,[x0,xf],u0,h);


% Eulero Implicito
[x2,u2] = eulero_imp(f,[x0,xf],u0,h);

% Runge-Kutta ordine 2

[x3,u3] = rungekutta2(f,[x0,xf],u0,h);

% Runge-Kutta ordine 4

[x4,u4] = rungekutta4(f,[x0,xf],u0,h);


% ode45

[x5,u5] = ode45(f,[x0,xf],u0,odeset('InitialStep',h));



x = linspace(0,1,100);

plot(x,Y(x),x1,u1,'g--*',x2,u2,'r-.d',x3,u3,'k--o',x4,u4,'c--x',x5,u5,'y-')
grid
legend('Soluzione analitica','Eulero Esplicito','Eulero Implicito','Runge-Kutta 2','Runge-Kutta 4','Ode45')