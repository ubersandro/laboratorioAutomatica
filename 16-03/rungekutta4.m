function [x,u] = rungekutta4(f,X,u0,varargin)

% Metodo di Runge-Kutta di ordine 2
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


k = 1;

while(k<length(x))
    F1 =feval(f,x(k),u(:,k));
    F2 = feval(f,x(k)+h/2,u(:,k)+(h/2)*F1);
    F3 = feval(f,x(k)+h/2,u(:,k)+(h/2)*F2);
    F4 = feval(f,x(k)+h,u(:,k)+h*F3);
    u(:,k+1)=u(:,k)+h/6*(F1+2*F2+2*F3+F4);
    k=k+1;
end

u = u';
