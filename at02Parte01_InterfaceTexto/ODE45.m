function out = ODE45 (f,a,b,n,yo)

h=(b-a)/n;
options = odeset('Reltol', 1e-3,'Initialstep',h,'Maxstep',h);
[t,y] = ode45(f,[a b], yo,options);
out =[t,y];