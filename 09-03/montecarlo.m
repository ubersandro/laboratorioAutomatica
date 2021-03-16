function ris = MonteCarlo (N)
%rand fornito da matlab -> algoritmi pseudocasuali 
%algoritmi deterministici che simulano il comportamento di variabili aleatorie 
%MonteCarlo : funzione che consente di valutare Pi con il metodo Montecarlo 
%close all; clc; 
x = rand(1,N); 
y=rand(1,N); 
count=0;
figure(2);
title("Montecarlo"); 
for i=1:N
    if x(i)^2+y(i)^2<=1  
        count=count+1;
        fprintf("ciao"); 
        hold on; 
        plot(x(i), y(i), 'r', 'MarkerSize', 10); 
        
    else
        hold on; 
        plot(x(i), y(i), 'b', 'MarkerSize', 10); 
       
    end
    ris=4*count/N; 
end 