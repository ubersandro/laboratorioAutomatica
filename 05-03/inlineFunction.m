%NEL COMMAND WINDOW 
% >> 
f = inline('x.*exp(-x.^2)', 'x') 
%NOTA -> f può essere usato sia per gli scalari che per i vettori perchè
%c'è il punto 