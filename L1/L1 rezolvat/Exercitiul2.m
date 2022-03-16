n=0:20;
x1=sin(pi*n*0.1);
x2=Impuls(0,20,5);
x=conv(x1,x2);
subplot(2,2,1), stem(0:20,x1),title('x1'),grid
subplot(2,2,2), stem(n,x2),title('x2'),grid
subplot(2,1,2), stem(0:length(x)-1,x),title('x'),grid