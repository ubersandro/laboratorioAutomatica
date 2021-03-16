function [x,u] = eulero_esplicito (f,X,u0,varargin)
%Metodo di Eulero Esplicito 
%f --> handler della funzione generatrice
%X --> [x0,xf] 
%u0 --> condizione iniziale 
%implementando una funzione che risolve eq differenziali è meglio farsi
%restituire entrambi i campioni (su x ed u)
%VARIARDIC FUNCTION (varargin) --> H è il passo di integrazione opzionale. 
%h default =1e-3

narginchk(3,4); %check parametri in ingresso --> min 3 max 4

if nargin == 3 
    h=1e-3 ; 
else 
    h=varargin{1}; %struttura  
end

x0=X(1); 
xf=X(2); 
x=(x0:h:xf)'; 

%inizializziamo u per non sprecare memoria dopo 
u = zeros(length(x),length(u0)); %vettore colonna 
%NOTA -> questi metodi funzionano anche se stiamo trattando dei campi
%vettoriali 
u(1,:) = u0; 
%per calcolare le soluzioni --> LOOP 
k=2; 

while(k <=length(x))
    u(k,:) = u(k-1,:) + h*feval(f,x(k-1), u(k-1,:)); 
    k=k+1; 
end 
end