F0 = 300; Fs = 4000;
Tmax = 10^(-2); % durata semnalului 10 ms
Ts = 1/Fs;
t = 0:Ts:Tmax-Ts;
xa = 2*sin(2*pi*F0*t);
figure(2), plot(t,xa,'-o'), xlabel('t[ms]'), grid