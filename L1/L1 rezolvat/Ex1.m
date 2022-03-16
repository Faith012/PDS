[x11,n]=Impuls(-10,20,1);
[x12,n]=treapta(-10,20,5);
[x13,n]=Impuls(-10,20,-2);
[x14,n]=treapta(-10,20,9);
x1=x11+x12+x13-2*x14;
figure, stem(n,x1),grid;


