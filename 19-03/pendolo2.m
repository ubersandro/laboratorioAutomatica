function xpunto =  pendolo2(t,x) % t è indipendente, x è indipendente 
global u; 
%pendolo senza forzamento esterno 
%l -> lunghezza asta
%m -> massa puntiforme 
%Fr -> coefficiente attrito 
%g -> accelerazione gravità 
l=5;
m=30;
Fr=4;
g=9.8;
 
x1p=x(1);  
x2p=-(g/l)*sin(x(1))-(Fr/(m*l^2)*(2/pi)*atan(10*x(2)))-u/(m*l^2);  % è una soluzione antipatica perchè dovrei modificare la funzione pendolo 
xpunto=[x1p;x2p];
end 