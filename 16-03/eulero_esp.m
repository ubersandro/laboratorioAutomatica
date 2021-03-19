function [x,u] = eulero_esp(f,X,u0,varargin)

% Metodo di Eulero Esplicito
% f -> handler della funzione generatrice
% X -> [x0,xf]
% u0 -> c.i.
% varargin -> passo di integrazione h (opzionale), default = 1e-3

narginchk(3,4);

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

while (k <= length(x))
    u(:,k)=u(:,k-1) + h*feval(f,x(k-1),u(:,k-1));
    k = k+1;
end

u = u';
