F0 = 300; Fs = 4000;
Tmax = 10^(-2); % durata semnalului 10 ms
N = Tmax*Fs; % numar de esantioane N=10ms*4kHz
w0 = 2*pi*F0/Fs; % pulsatia normata
n = 0:N-1;
x = 2*sin(w0*n);
figure(1), stem(n,x), grid
