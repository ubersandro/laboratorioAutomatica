clear;
close all
% y'=f(x,y)

% funzione generatrice

M = [2,1,5;-3,-2,-8;3,3,2];
v = @(x)[exp(-2*x);2*exp(-2*x)-cos(3*x);cos(3*x)];

f = @(x,y)(M*y+v(x));
y0(1) = 1;
y0(2) = -1;
y0(3) = 0;
x0 = 0;


% intervallo di integrazione

xf = pi/2;

u0 = y0;

% passo di integrazione

h = 0.005;

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

subplot(3,1,1),plot(x1,u1(:,1),'g--*',x2,u2(:,1),'r-.d',x3,u3(:,1),'k--o',x4,u4(:,1),'c--x',x5,u5(:,1),'b-')
grid
legend('Eulero Esplicito','Eulero Implicito','Runge-Kutta 2','Runge-Kutta 4','Ode45')


subplot(3,1,2),plot(x1,u1(:,2),'g--*',x2,u2(:,2),'r-.d',x3,u3(:,2),'k--o',x4,u4(:,2),'c--x',x5,u5(:,2),'b-')
grid
legend('Eulero Esplicito','Eulero Implicito','Runge-Kutta 2','Runge-Kutta 4','Ode45')



subplot(3,1,3),plot(x1,u1(:,3),'g--*',x2,u2(:,3),'r-.d',x3,u3(:,3),'k--o',x4,u4(:,3),'c--x',x5,u5(:,3),'b-')
grid
legend('Eulero Esplicito','Eulero Implicito','Runge-Kutta 2','Runge-Kutta 4','Ode45')
