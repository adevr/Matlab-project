clc
clear

disp('----- Método de rk2 -----');
disp(' ');

strF = input('f(t,y) = ', 's');
f = @(t, y) eval(vectorize(strF));
a = str2num(input('a = ', 's'));
b = str2num(input('b = ', 's'));
n = str2num(input('n = ', 's'));
y0 = str2num(input('y0 = ', 's'));

yRK2 = N_RK2(f, a, b, n, y0);

sExacta = dsolve(['Dy = ', strF],...
    ['y(',num2str(a), ') = ', num2str(y0)]);
g = @(t) eval(vectorize(sExacta));
t = a:(b-a)/n:b;
yExacta = g(t);

erroRK2 = abs(yExacta - yRK2);

tabela = [t.', yRK2.', yExacta.', erroRK2.'];
disp(tabela);

plot(t, yRK2, '-r');
hold on;
plot(t, yExacta, 'b');
hold off;
grid on;
legend('RK2', 'Exacta');
shg;

