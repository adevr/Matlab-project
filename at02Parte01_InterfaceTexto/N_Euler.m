%N_EULER  Método de Euler para PVI.
%   y = N_Euler(f,a,b,n,y0) Método numérico para a resolução de um PVI
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
%Criada por: Arménio Correia .: armenioc@isec.pt
%Finalizada a: 03/05/2019
%Modificado por: AlexandreReis      - a21280926@alunos.isec.pt
%                Celso Jordão       - a21130067@alunos.isec.pt
%                Fábio CapoBianchi  - a21280924@alunos.isec.pt
function y = N_Euler(f, a, b, n, y0)

h = (b-a)/n;
t(1) = a;
y(1) = y0;

for i = 1:n
    y(i+1) = y(i) + h*f(t(i), y(i));
    t(i+1) = t(i) + h;
end
