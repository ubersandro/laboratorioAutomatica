%funzioni x,x^3, exp(-x), exp(-x^2) 
clear; close all ;
fplot(@(x)x, [0,4]) 
grid; 
hold on; 
fplot(@(x)x^3, [0,4]) %inefficiente --> vettorizza la curva e poi usa plot 
%hold on; 
fplot(@(x)exp(-x), [0,4])
fplot(@(x)exp(-x^2), [0,4])
legend('x', 'x^3', 'exp(-x)', 'exp(-x^2)'); 

%ellisse 
clear; close all; clc; 
theta=0:0.1:2*pi
%eccentricità -> 0 <-> circonferenza, 1<-> retta 
a=1 ;
e=0.5;
b=a^2-e^2*a^2; 

%axis equal  -> rimodula il grafo imponendo che su x e y ci sia la stessa
%scala 
r=a*(1-e^2)./(1-e*cos(theta));  

%matlab dimensiona i grafi secondo criteri che usa lui --> ascisse e ordinate passi diversi 

x=a*cos(theta); 
y=b*sin(theta) ; 

plot(x,y); 
axis equal; 
e=0.5; 
b=a^2-e^2*a^2; 

x=a*cos(theta); 
y=b*sin(theta) ; 

hold on; 
plot(x,y); 
grid; 

%NB --> per modificare le scale dei grafici -> ticks nelle opzioni
%(property inspector). Rivedi parte scale log log log log log 