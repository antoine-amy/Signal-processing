clear all; close all

fe=512; N=1024; f0=16;

n=(0:N-1);
Dt=1/fe; t=n*Dt; T0=1/f0; L=T0/Dt; L4=4*L;

x=cos(2*pi*f0*t); y4=x(1:L4);

Fy4=fft(y4);
k4=(0:L4-1)'; %' pour transposer, et ; pour ne pas afficher la variable dans les lignes de commandes

Df4=fe/L4; f4=k4*Df4;


subplot(121)
plot(y4)
title('Plot 1')
xlabel('Échantillons'); ylabel('Signal (u)')


Fy4=fftshift(Fy4);
f4=f4-fe/2;
y4_rec=ifft(fftshift(Fy4/Dt)*Dt); %*Dt pour normer
subplot(122)
plot(y4_rec)
xlabel('Échantillons')
ylabel('ifft')
title('Plot 2')