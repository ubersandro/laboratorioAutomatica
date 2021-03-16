function [x,u] = eulero_implicito(f,X,u0,varargin)
%METODO DI EULERO IMPLICITO 

narginchk(3,4); 
if nargin == 3
    h=1e-3; 
else 
    h=varargin{1};  
end

%nota --> ad ogni passo devo risolvere numericamente un'equazione 
%usiamo il solver fsolve 
%ad ogni passo risolviamo l'equazione alle differenze non la differenziale!
% X0 --> è uno starting point dato da noi 
%per le options --> OPTIMSET perchè è una ottimizzazione
x0=X(1); 
xf=X(2);

x=(x0:h:xf); 
u=zeros(length(x), length(u0)); 
u(1,:)=u0; 
k=2; 
opt=optimset('Display', 'off'); 

while(k<=length(x)) %u(k)<-u(k-1) 
    g=@(uk1) uk1-u(k-1,:)-h*feval(f,x(k),uk1); 
    u(k,:)=fsolve(g,u(k-1,:), opt); 
    k = k+1; 
end 
end