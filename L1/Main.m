clc;
clear;
close all;
#Exemplul 1
#Impuls
##[y1,n] = Impuls(-10,10,0)
##figure, stem(n,y1), grid;
##[y2,n] = Impuls(-10,10,3);
##figure, stem(n,0.5*y2), grid;

#Treapta
##[y1,n] = Treapta(-5,10,0);
##figure, stem(n,y1), grid;
##[y21,n] = Treapta(-5,10,-3);
##[y22,n] = Treapta(-5,10,3);
##y2 = 0.7*(y21-y22);
##figure, stem(n,y2), grid;

#Eercitiul 1.1
  [y12, n] = Impuls(-10, 20, 1);
  [y13, n] = Treapta(-10, 20, 5);
  [y14, n] = Impuls (-10, 20, -2);
  [y15, n] = Treapta (-10, 20, 9);
  y1 = y12 + y13 + y14 - 2*y15;
  #figure, stem(n,y1), grid;

#Eercitiul 1.2
  n = [0:10];
  x2 = (1/2 .* n) - ((-1/2) .* n);
  #figure, stem(n,x2), grid;

#Eercitiul 1.3
  n = [-20:20];
  x3 = log(cos((n*pi)/15) - sin((n*pi)/15));
  #figure, plot(n,x3), grid;

#Eercitiul 1.4 - Urmeaza acasa


#Convolutia
  #Exemplul 2
  x1 = Treapta(0, 10, 0) - Treapta(0, 10, 5);
  n = 0:20;
  x2 = 0.9.^n;
  x = conv(x1, x2);
##  subplot(2, 2, 1), stem(0:10, x1), title('x1'), grid
##  subplot(2, 2, 2), stem(n, x2), title('x2'), grid
##  subplot(2, 1, 2), stem(0:length(x)-1, x), title('x'), grid
  
#FFT
  #Exemplul 3
  x1 = Treapta(0, 20, 0) - Treapta(0, 20, 10);
  X = fft(x1);
##  figure(1), subplot(121), plot(abs(X)), grid, title('|X| in 21 puncte');
  X1 = fft(x1, 512);
##  subplot(122), plot(abs(X1)), grid, title('|X1| in 512 puncte');
  w = -pi:2*pi/512:pi - 2*pi/512;
##  figure(2), plot(w, fftshift(abs(X1))), grid;
##  figure(3), plot(w, fftshift(angle(X1))), grid;
##  figure(4);
##    subplot(2, 1, 1), plot(w, fftshift(real(X1))), grid;
##    subplot(2, 1, 2), plot(w, fftshift(imag(X1))), grid;

  #Exemplul 4
  #a)
  Fs = 8000; F0 = 500; t_max = 0.04;
  t = 0:1/Fs:t_max-1/Fs;
  s = sin(2*pi*F0*t);
  No_samples = length(s)
  #b)
  N_fft = 256;
  S = fft(s, N_fft);
  k = 0:N_fft-1;
  figure(1), plot(k, abs(S));
  #c)
  w = -pi: 2*pi/N_fft :pi-2*pi/N_fft;
  figure(2),plot(w,fftshift(abs(S))),grid
  #d)
  f = -0.5: 1/N_fft :0.5-1/N_fft; % sau: f = w/(2*pi)
  figure(3),plot(f,fftshift(abs(S))),grid
  #e)
  F = -Fs/2: Fs/N_fft :Fs/2-Fs/N_fft; %sau:F=w/(2*pi)*Fs
  figure(4),plot(F,fftshift(abs(S))),grid
  #f)
  figure(5),subplot(211),plot(f,fftshift(abs(S))),grid
  subplot(212),plot(f,fftshift(angle(S))),grid
  #g)
  figure(6),subplot(211),plot(f,fftshift(real(S))),grid
  subplot(212),plot(f,fftshift(imag(S))),grid
  


  



  

  

  
 
