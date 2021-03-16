clear; close all; clc; 
% plot3 ---> grafico di una curva 
t=0:pi/50:10*pi; 
x=exp(-0.05*t).*cos(t);
y=exp(-0.05*t).*sin(t);
plot3(x,y,t) ; 


close all; clc; clear; 
%grafico di una superficie  --> mesh e meshgrid 
[x,y] = meshgrid(-2:0.1:2, -3:0.1:3); 
z=exp(-x.^2-y.^2); 
subplot(1,2,1) ;
mesh(x,y,z); 

%SURF 
%figure(2); 
subplot(1,2,2) ;
surf(x,y,z) 