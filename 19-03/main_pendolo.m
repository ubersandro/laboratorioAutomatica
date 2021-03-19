clear;
close all

% intervallo di integrazione
toss = [0 100]; 

% passo di integrazione

h = 0.05;

%condizioni iniziali 
x0 = [1/2 0]; 

% Eulero Esplicito

[t1,x_sol1] = eulero_esp(@pendolo,toss,x0,h);


% Eulero Implicito
[t2,x_sol2] = eulero_imp(@pendolo,toss,x0,h);

% Runge-Kutta ordine 2

[t3,x_sol3] = rungekutta2(@pendolo,toss,x0,h);

% Runge-Kutta ordine 4

[t4,x_sol4] = rungekutta4(@pendolo,toss,x0,h);


% ode45

%[t5,x_sol5] = ode45(@pendolo,toss,x0,odeset('InitialStep',h));


plot(t1,x_sol1,'g--*',t2,x_sol2,'r-.d',t3,x_sol3,'k--o',t4,x_sol4,'c--x')%,t5,x_sol5,'b-')
grid
legend('Eulero Esplicito','Eulero Implicito','Runge-Kutta 2','Runge-Kutta 4','Ode45')