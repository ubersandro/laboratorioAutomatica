close all; clear; clc; 
%NOTA -> cambiando la size del vettore il vecchio viene gettato via -->
%poco efficiente perchè ne viene generato uno nuovo 

%es 1 
v = 42:2:67; %numeri pari da 41 a 67 

%es 2 
x=[13 5 8 6] ; 

x4=4+x ; 
fprintf("X prima di sottrarre 1\n") ;
x

fprintf("X dopo aver sottratto uno el in pos pari\n") ;
%come si aggiunge -1 a posizioni pari? 
[rx, cx]=size(x);  %RECUPERA NUMERO DI COLONNE --> usa LENGTH che restituisce il numero max tra righe e colonne (per i vettori è ottimo) 
x(2:2:cx) %x(2:2:end) 
x(2:2:cx) = x(2:2:cx)-1  %elementi pari
% nota --> si può usare end per riferirsi all'elemento finale 
x_sqrt=sqrt(x);  %anche x.^(1/2) 

x_sq=x.*x ; 

%es 3 
x = [ 4 2 3 8]' ; 
y = [ 3 2 5 2]' ;

sum_x = sum(x);
y = sum_x+y; 
 
y_div_x = y./x; 

x_pow_y=x.^y; 

z=x.*y; 
w=sum(z) ; 

ris=x'*y-w; 

%es 5
%a)
    v=2:2:12
%b) 
    v=1./[1:2:13]
%d) 
    v=[1:6]./[2:7]

%es 6
n=101
x=(-1).^([2:n]+1)./(2*[2:n]-1)
