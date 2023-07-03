tic
a = 1;
b = 1;
V0 = 15;
Vecteur_E = [];
Vecteur_k = [];

for E = [1:0.01:100]
    K = sqrt(E);
    Q = sqrt(V0 - E);
    X1 = ((Q.^2) - (K.^2))./(2*(K).*(Q));
    X2 = sin(a*(K)).*sinh((Q)*b);
    X3 = cos((K)*a).*cosh((Q)*b);
    RHS = (X1.*X2) + X3;


    if -1 <= RHS && RHS <=1
        Vecteur_E = [Vecteur_E , E];
        k = acos(RHS)/(a + b);
        Vecteur_k = [Vecteur_k , k];
    end
end


plot(Vecteur_k,Vecteur_E ,'b');
hold on;
plot(-Vecteur_k , Vecteur_E,'b');%les vecteurs d'ondes k et -k correspondant à la même énergie
xlabel("Vacteur d'onde k");
ylabel("Energie E");
grid on ;
toc;