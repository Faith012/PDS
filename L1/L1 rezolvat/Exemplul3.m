x1=treapta(0,20,0)-treapta(0,20,10);
X=fft(x1);
X1=fft(x1,512);
figure(1),subplot(121),plot(abs(X)),grid, title('|X| in 21 puncte')
subplot(122),plot(abs(X1)),grid, title('|X1| in 512 puncte')
w=-pi:2*pi/512:pi-2*pi/512;
figure(2),plot(w,fftshift(abs(X1))),grid
figure(3),plot(w,fftshift(angle(X1))),grid
figure(4)
subplot(2,1,1),plot(w,fftshift(real(X1))),grid
subplot(2,1,2),plot(w,fftshift(imag(X1))),grid