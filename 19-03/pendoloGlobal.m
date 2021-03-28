function xpunto =  pendoloGlobal(t,x) % t è indipendente, x è dipendente -> come nel caso dell'equazione non lineare  
%Funzione generatrice del pendolo (con forzamento aggiunto). La funzione
%restituisce le derivate della funzione che descrive il pendolo phi(t).
%Nello specifico xpunto=[phi', phi'']. 
%PARAMETRI
%l -> lunghezza asta
%m -> massa puntiforme 
%Fr -> coefficiente attrito 
%g -> accelerazione gravità 
%FORZAMENTO ESTERNO u(t) 
%Ode e gli altri metodi di MATLAB non permettono di fornire u come
%parametro e quindi definiamo il profilo temporale del forzamento
%all'interno della funzione pendolo. 
l=5;
m=30;
Fr=4;
g=9.81;

u=30*sin(2*pi*0.1*t); %lavora bene solo se l'ingresso è una formula chiusa --> se è una sequenza di campioni non funzionerebbe 
%U GLOBAL ---> IN SIMULINK si può fare ma il problema è che non riesco ad
%utilizzare t --> devo dare alla u una forma (sequenza di campioni). Il passo di integrazione non è costante e quindi 
%non posso usare pendolo con altri metodi di integrazione. PASSO DI
%INTEGRAZIONE VARIABILE(ES. ODE45). 
%NOTA -> QUESTA SOLUZIONE LAVORA BENE CON LA FORMULA ANALITICA DI U MA CON
%UNA SEQUEUNZA DI CAMPIONI NON SI PU0'. 

x1p=x(2); %derivata prima di phi(t) 
x2p=-(g/l)*sin(x(1))-(Fr/(m*l^2))*(2/pi)*atan(10*x(2))-u/(m*l^2);  % è una soluzione antipatica perchè dovrei modificare la funzione pendolo 
xpunto=[x1p;x2p];
end 

%morale della favola --> lavorare con i sistemi non lineari in MATLAB nob è
%facile 