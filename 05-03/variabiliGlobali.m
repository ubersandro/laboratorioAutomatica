function ris = variabiliGlobali() 
global x; 
%Descrizione: funzione con variabile globale. Prima di tutto va dichiarata
%o nello script in cui richiamo la funzione oppure nella command window. 
%Questa funzione incrementa x (GLOBALE) --> ogni funzione ha un suo
%workspace locale ed x si può trovare in più ws. 
fprintf("Questa è una variabile globale (INTERA) %i\n", x); 
x=x+1; 
ris=0
end