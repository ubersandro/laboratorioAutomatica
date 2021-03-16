%%confronto tra vettori 
clear; close all; clc; 
v_r=([4,3,2]>[3,2,1])&([1,2,3]<[3,2,1])

%blocco if then else 
%
x="Ciao"; 
if ( 2>3)
  fprintf("%s\n", x) 
else 
  fprintf("%s PORCODIO\n", x)
end
%
%SWITCH

x=1; 
switch x
    case 1 
        y=9
    case 2 
        y=8
    otherwise
        y=10
        
end


for k=1:5
    fprintf("%i\t", k) 
end 
fprintf("\n")

i=10
while i>0
    fprintf("Minchia\n") 
    i=i-1;
end 
