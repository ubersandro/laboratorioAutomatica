clear; close all; clc; 
t=0:0.1:1; 
figure(1); 
passo01=sqrt(t) 
plot(t, passo01)
xlabel('t')
ylabel('sqrt(t)')
title('Sqrt x')
grid
hold on 
%sovrappone i grafici prodotti da ora in poi 
x=0:0.001:1; 
passo0001=sqrt(x)
plot(x, passo0001); 
legend("passo 0.1", "passo 0.0001"); 
%generare una linea tratteggiata 
close all; 
figure(2); 
v=0:0.1:2*pi; 
plot(v,sin(v), 'r'); %red
grid; 
title("Seno di v") ; 
hold on; 
plot(v,cos(v), 'k-.', 'LineWidth', 3)  %black, dash dotted, 3 LW

%marker 
plot(t, sin(t), '*') %genera solo punti "interpolati" ? 


close all; 
%clear; 
%stem --> utile per disegnare le successioni 
k=0:6; 
y=(1/2).^k; 
stem(k,y) 

%subplot --> divide la figura in una matrice m x n 

close all; 
%clear; 

figure(3) ;
title("Subplot"); 
grid; 
subplot(2,2,1) ;
plot(v, sin(v)) ;
legend("Seno di v"); 
subplot(2,2,2) ;
plot(v, cos(v)) ;
legend("Coseno di v"); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; close all ;  clc; 

for i=1:2
    t=linspace(0,2*pi, 10*i) ;
    y=sin(t); 
    subplot(1,2,i) ;
    plot(t, y, 'ko') ; %marker e pallini 
    %titolo personalizzato 
    title(sprintf("%d Punti", 10*i)); 
end

%sui grafici posso disegnare funzioni che hanno una forma analitica e anche
%sequenze di numeri qualunque 
%fplot --> specifico per rappresentare funzioni che hanno forma analitica 
%f='sin(3*x) - cos(2*x)'
close all ;
fplot(@(x)sin(x)-3*cos(8*x), [0, 2*pi]); 
title(sprintf("fplot con handle"));