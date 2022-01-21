clear all %efface toutes les variables du workspace
close all %ferme toutes les figures

fe=512 %la frequence dechantillonnage
N=1024 %le nombre dechantillons a simuler
f0=16 %la fréquence doscillation du signal
n=(0:N-1) %la frequence doscillation du signal

Dt=1/fe; t=n*Dt; T0=1/f0; L=T0/Dt

x=cos(2*pi*f0*t); y=x(1:L)

figure
plot(t,x) %tracer le signal
xlabel('Temps (s)'); ylabel('Signal (u)')

figure
plot(y) %tracer une periode
xlabel('Échantillons'); ylabel('Signal (u)')