function xpunto =  pendolo(t,x) % t è indipendente, x è indipendente 
%pendolo senza forzamento esterno 
%l -> lunghezza asta
%m -> massa puntiforme 
%Fr -> coefficiente attrito 
%g -> accelerazione gravità 
l=0.2
m=0.5
x1p=x(1);  
x2p=-(g/l)*sin(x(1))-(Fr/(m*l^2)*(2/pi)*atan(10*x(2))); 
xpunto=[x1p, x2p]
end 