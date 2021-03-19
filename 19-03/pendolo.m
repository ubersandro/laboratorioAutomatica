function xpunto =  pendolo(t,x) % t è indipendente, x è indipendente 
%pendolo senza forzamento esterno 
%l -> lunghezza asta
%m -> massa puntiforme 
%Fr -> coefficiente attrito 
%g -> accelerazione gravità 
l=0.5;
m=30;
Fr=4;
g=9.8;
u=30*sin(2*pi*0.1*t); %lavora bene solo se l'ingresso è una formula chiusa --> se è una sequenza di campioni non funzionerebbe 
x1p=x(1);  
x2p=-(g/l)*sin(x(1))-(Fr/(m*l^2)*(2/pi)*atan(10*x(2)))-u/(m*l^2);  % è una soluzione antipatica perchè dovrei modificare la funzione pendolo 
xpunto=[x1p;x2p];
end 

%morale della favola --> lavorare con i sistemi non lineari in MATLAB nob è
%facile 