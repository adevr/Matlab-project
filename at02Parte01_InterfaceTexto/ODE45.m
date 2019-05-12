%ODE45  Método de ODE45 para PVI.
%   [t,y] = ODE45(f,a,b,n,y0) Método numérico para a resolução de um PVI
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  
%
%Argumentos:
%   f - função do 2º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos ou iterações do método
%   y0 - condição inicial t=a -> y=y0
%Retorno: 
%   [t,y] - vector das aproximações discretas da solução exacta
%   y(1) = y0
%Finalizada a: 03/05/2019
%Modificado por: AlexandreReis      - a21280926@alunos.isec.pt
%                Celso Jordão       - a21130067@alunos.isec.pt
%                Fábio CapoBianchi  - a21280924@alunos.isec.pt

function [t,y] = ODE45 (f,a,b,n,y0)

h=(b-a)/n;
tsp = a:(b-a)/n:b;
y(1) = y0;
[t,y] = ode45(f,tsp,y0);
