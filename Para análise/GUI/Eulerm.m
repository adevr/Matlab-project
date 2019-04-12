function y = Eulerm(f,a,b,n,y0)

h = (b-a)/n;
t(1) = a;
y(1) = y0;

for i=1:n
    x = y(i)+ h*((f(t(i),y(i))));
    t(i+1) = t(i)+h;
    y(i+1) = y(i)+(h/2)*(f(t(i),y(i)+f(t(i+1),x)));
end
