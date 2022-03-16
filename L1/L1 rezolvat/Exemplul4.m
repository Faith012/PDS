Fs = 8000; F0 = 200; t_max = 0.04;
t = 0:1/Fs:t_max-1/Fs;
s = sin(2*pi*F0*t);
No_samples = length(s); % sau: No_samples = t_max*Fs
N_fft = 256;
S = fft(s,N_fft);
k = 0:N_fft-1;
figure(1),plot(k,abs(S))
w = -pi: 2*pi/N_fft :pi-2*pi/N_fft;
figure(2),plot(w,fftshift(abs(S))),grid
f = -0.5: 1/N_fft :0.5-1/N_fft; % sau: f = w/(2*pi)
figure(3),plot(f,fftshift(abs(S))),grid
F = -Fs/2: Fs/N_fft :Fs/2-Fs/N_fft; %sau:F=w/(2*pi)*Fs
figure(4),plot(F,fftshift(abs(S))),grid
figure(5),subplot(211),plot(f,fftshift(abs(S))),grid
subplot(212),plot(f,fftshift(angle(S))),grid
figure(6),subplot(211),plot(f,fftshift(real(S))),grid
subplot(212),plot(f,fftshift(imag(S))),grid

