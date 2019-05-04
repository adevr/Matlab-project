function y=N_RK3(f,a,b,n,y0)
h=(b-a)/n;
t(1)=a;
y(1)=y0;
for i=1:n
   t(i+1) = t(i)+h;
   k1 =h*f(t(i),y(i));
   k2=h*f(t(i)+ h/2, y(i) + k1/2);
   k3=h*f(t(i)+h,y(i)-k1+2*k2);
   y(i+1) = y(i)+(1/6)*(k1+4*k2+k3);
end