function [x,u] = eulero_imp(f,X,u0,varargin)

% Metodo di Eulero Implicito
% f -> handler della funzione generatrice
% X -> [x0,xf]
% u0 -> c.i.
% varargin -> passo di integrazione h (opzionale), default = 1e-3
% x -> dominio di integrazione
% u -> soluzione

narginchk(3,4)

if nargin==3
    h=1e-3;
else
    h=varargin{1};
end

x0 = X(1);
xf = X(2);

x = (x0:h:xf)';

u = zeros(length(u0),length(x));

u(:,1) = u0;


k = 2;

opt = optimset('Display','off');
while (k<=length(x)) % u(k)<- u(k-1)
    g = @(uk1) uk1 -u(:,k-1) - h*feval(f,x(k),uk1);
    u(:,k) = fsolve(g,u(:,k-1),opt);
    k = k+1;
end
    
u = u';
    
