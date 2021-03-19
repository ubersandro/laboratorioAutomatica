function [x,u]= rungekutta2(f,X,u0,varargin)
narginchk(3,4); 
if nargin == 3
    h=1e-3; 
else 
    h=varargin{1};  
end

x0=X(1); 
xf=X(2);

x=(x0:h:xf); 
u=zeros(length(x), length(u0)); 
u(1,:)=u0; 
k=2; 

while(k<=length(x))
    f1=feval(f,x(k-1),u(k-1,:)); 
    f2=feval(f,x(k-1)+h/2,u(k-1,:)+(h/2)*f1); 
    u(k,:)=u(k-1,:)+h*f2; 
    k=k+1; 
end
end