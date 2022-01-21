clear all; close all

fe=512 %frequence echantillonnage
N=1024 %nbr dechantillons a simuler
f0=16 %frequence signal

n=(0:N-1) %la frequence doscillation du signal
Dt=1/fe; t=n*Dt; T0=1/f0; L=T0/Dt

x=cos(2*pi*f0*t); y=x(1:L)

Fy=fft(y)
k=(0:L-1)


figure
plot(k,abs(Fy))
xlabel('Indice fréquentiel'); ylabel('Spectre')
Df=fe/L
f = k*Df

figure
plot(f,abs(Fy))
xlabel('Fréquence (en Hz)')
ylabel('Spectre')


%centrage
Fy = fftshift(Fy)
f=f-fe/2
figure
plot(f,abs(Fy))
xlabel('Fréquence (en Hz)')
ylabel('Spectre centré')
