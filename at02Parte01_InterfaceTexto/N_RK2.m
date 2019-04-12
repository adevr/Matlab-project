function y = N_RK2(f, a, b, n, y0)

h = (b-a)/n;
t(1) = a;
y(1) = y0;
           
for i = 1:n
    t(i+1) = t(i) + h;
    
    k1 = h*f(t(i), y(i));
    k2 = h*f(t(i+1), y(i) + k1);
    
    y(i+1) = y(i) + (k1+k2)/2;
end

    
