[y1,n] = treapta(-5,10,0);
figure, stem(n,y1), grid
[y21,n] = treapta(-5,10,-3);
[y22,n] = treapta(-5,10,3);
y2 = 0.7*(y21-y22);
figure, stem(n,y2), grid