close all; clear; clc; 
%Risoluzione sistema di equazioni differenziali --> conviene scriverla in
%forma matriciale 
M=[2 1 5 : -3 -2 -8: 3 3 2 ]; %coefficienti y
v=@(x)[exp(-2*x):2*exp(-2*x)-cos(3*x):cos(3*x)]  ; 

f=@(x,y)(M*y+v(x)); 
y0(1)=1; 
y0(2)=-1; 
y0(3)=0; 

x0=0; 
xf=pi/2; 
u0=y0; 

%plot con 3 suplot innestati
%vedi codice suo
%prova con altre equazioni ODE 
