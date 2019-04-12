function y = RK4(f,a,b,n,Y0);
%RK4  M�todo de Runge-kutta de 4� Ordem para PVI.
%   y = RK4(f,a,b,n,y0) M�todo num�rico para a resolu��o de um PVI
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
h    = (b-a)/n;
t(1) = a;
y(1) = Y0;
for i=1:n,
    k1=h*feval(f,t(i),y(i));
    k2=h*feval(f,t(i)+h*0.5,y(i)+0.5*k1);
    k3=h*feval(f,t(i)+h*0.5,y(i)+0.5*k2);
    k4=h*feval(f,t(i)+h,y(i)+k3);
    y(i+1) = y(i)+(1/6)*(k1+2*k2+2*k3+k4);
    t(i+1)=t(i)+h;
end