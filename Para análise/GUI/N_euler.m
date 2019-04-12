%N_EULER  M�todo de Euler para PVI.
%   y = N_euler(f,a,b,n,y0) M�todo num�rico para a resolu��o de um PVI
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condi��o inicial  
%
%INPUT:
%   f - fun��o do 2.� membro da Equa��o Diferencial
%   [a, b] - extremos do intervalo da vari�vel independente t
%   n - n�mero de subintervalos ou itera��es do m�todo
%   y0 - condi��o inicial t=a -> y=y0
%OUTPUT: 
%   y - vector das aproxima��es discretas da solu��o exacta
%   y(i+1) = y(i)+h*f(t(i),y(i)) , i =0,1,...,n-1
%
%   09/11/2012 - Arm�nioCorreia .: armenioc@isec.pt 
%              - Jo�oPedroAlves .: jpalves@isec.pt 

function y = N_euler(f,a,b,n,y0)
h = (b-a)/n;
t(1) = a;
y(1) = y0;
for i=1:n
    y(i+1) = y(i)+h*f(t(i),y(i));
    t(i+1) = t(i)+h;
end
