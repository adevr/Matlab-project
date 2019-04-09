function y = N_RK2(f, a, b, n, y0)

h    = (b-a)/n;
t(1) = a;
y(1) = y0;

sExata = dsolve(['Dy=', f],...
                ['y(',num2str(a),')=',num2str(y0)]);


sRK2 = zeros(size(t));
            

for i = 1:(length(n)-1)
    
end

    
