function ris = MonteCarlo (N)
%rand fornito da matlab -> algoritmi pseudocasuali 
%algoritmi deterministici che simulano il comportamento di variabili aleatorie 
%MonteCarlo : funzione che consente di valutare Pi con il metodo Montecarlo 
close all;  
x = rand(1,N); 
y=rand(1,N); 
count=0;
figure(2);
title("Montecarlo"); 
%FIND mi restituisce valori diversi da 0
[r c v] = find(x.^2+y.^2<=1); %il vettore risultato ha come valori 0 e 1 perchè qui sto eseguendo un check!
%NB r e c sono le righe e colonne del vettore v contenente valori diversi da 0 
plot(x(c), y(c), 'r.','MarkerSize', 10); %PRENDO I SOLI PUNTI DEL CERCHIO -> il grafico lo faccio una sola volta
count=sum(v); 
ris=4*count/N; 
end 

%ND --> il check da come risultati 0 1 in un vettore (per ciascuna
%posizione del vettore di partenza) 
%possiamo sommare v oppore considerare la lunghezza di C 
