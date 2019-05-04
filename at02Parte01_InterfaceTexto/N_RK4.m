%N_RK2  Método de Runge Kutta de ordem 2 para PVI.
%   y = N_RK2(f,a,b,n,y0) Método numérico para a resolução de um PVI
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  
%
%Argumentos:
%   f - função do 2º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos ou iterações do método
%   y0 - condição inicial t=a -> y=y0
%Retorno: 
%   y - vector das aproximações discretas da solução exacta
%   y(i+1) = y(i)+h*f(t(i),y(i)) , i =0,1,...,n-1
%Finalizada a: 03/05/2019
%Modificado por: AlexandreReis      - a21280926@alunos.isec.pt
%                Celso Jordão       -
%                Fábio CapoBianchi  -
function y = N_RK4(f, a, b, n, y0)

h = (b-a)/n;
t(1) = a;
y(1) = y0;

for i = 1:n
    t(i+1) = t(i) + h;

    k1 = h*f(t(i), y(i));
    k2 = h*f(t(i) + (h/2), y(i) + (k1/2));
    k3 = h*f(t(i) + (h/2), y(i) + (k2/2));
    k4 = h*f(t(i+1), y(i)+k3);

    y(i+1) = y(i) + (k1+(2*k2)+(2*k3)+k4)/6;
end
    
        
    