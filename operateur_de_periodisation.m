N = 8;
P = eye(N);
ld = [2, 4 , 7];

P(ld,:) = [];
for i = 1:length(ld)
    P(i,ld(1,i)) = 1;
end

display(P);