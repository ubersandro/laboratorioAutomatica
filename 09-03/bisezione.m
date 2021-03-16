function [zero ampiezza] = bisezione(f,a,b, N) 
%questa funzione trova lo 0 di una funzione 
%obiettivo: determinare x' tale che f(x')=0
%@param numero di iterazioni N 
%       funzione (handle)    f
%ipotesi -> f continua su intervallo A e B 
%f(a) * f(b) < 0 
%@return - ampiezza tale che finchè |xsup-xmin| > epsilon vado avanti 
close all; clc; 
if (feval(f,a) * feval(f,b))>0 
    error("la funzione  non ha zeri nell'intervallo");
end 

xinf=a; xsup=b; 

for i=1:N
    puntoMedio=(xinf+xsup)/2; 
    if (feval(f, puntoMedio)*feval(f,xinf))>0 
       xinf=puntoMedio; 
    else 
        xsup=puntoMedio; 
    end 
end

zero=(xinf+xsup)/2; 

ampiezza= abs(xsup-xinf); 
fplot(f,[a,b]); 
hold on; 
plot(zero, feval(f,zero),'*')
grid; 

end