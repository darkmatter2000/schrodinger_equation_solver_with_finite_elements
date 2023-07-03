a = 1;
b = 1;
V0 = 15;
E = [1:0.01:100];

K = sqrt(E);
Q = sqrt(V0 - E);
X1 = ((Q.^2) - (K.^2))./(2*(K).*(Q));

X2 = sin(a*(K)).*sinh((Q)*b);

X3 = cos((K)*a).*cosh((Q)*b);

F = (X1.*X2) + X3;

plot(E,F);
grid on;