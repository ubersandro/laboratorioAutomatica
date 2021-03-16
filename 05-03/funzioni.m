function [x, y] = prova(a,b)
%commento relativo alla funzione
x=a*a; 
y=b*a; 
end

function [area, benedizione]=areaCerchio(raggio)
area=pi*raggio^2; 
benedizione="Porcodio"; 
end 

%nota --> la funzione principale (la prima) la posso vedere solo
%all'interno della funzione --> esporto solo la prima che deve avere STESSO
%NOME FILE 