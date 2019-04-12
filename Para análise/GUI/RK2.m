function y = RK2(f,a,b,n,Y0);
%RK2  Método de Runge-kutta de 2ª Ordem para PVI.
%   y = RK2(f,a,b,n,y0) Método numérico para a resolução de um PVI
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  
%
%INPUT:
%   f - função do 2.º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos ou iterações do método
%   y0 - condição inicial t=a -> y=y0
%OUTPUT: 
%   y - vector das aproximações discretas da solução exacta
%   y(i+1) = y(i)+h*f(t(i),y(i)) , i =0,1,...,n-1
h    = (b-a)/n;
t(1) = a;
y(1) = Y0;
for i=1:n,
    k1=h*feval(f,t(i),y(i));
    t(i+1) = t(i)+h;
    k2=h*feval(f,t(i+1),y(i)+k1);
    y(i+1) = y(i)+0.5*(k1+k2);    
end