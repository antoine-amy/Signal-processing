
Dx=0.1; x=(-2:Dx:2-Dx)'; [xx,yy]=meshgrid(x); a=0.5; g=exp(-(xx.^2+yy.^2)/(a^2));

figure,imagesc(x,x,g); figure,surf(x,x,g)

Fg = fft2(g);

figure
subplot(211)
surf(real(Fg))
zlabel('Re(Fg(x,y))')
subplot(212)
surf(imag(Fg))
zlabel('Im(Fg(x,y))')

g_c = ifftshift(g);

Fg_c = fft2(g_c);
figure
subplot(211)
surf(real(Fg_c))
zlabel('Re(Fg_c(x,y))')
subplot(212)
surf(imag(Fg_c))
zlabel('Im(Fg_c(x,y))')

N = size(xx,1); Du = 1/(N*Dx);
[uu,vv] = meshgrid(((0:N-1)-N/2)*Du);
Fg_c = fftshift(Fg_c);
Fg_c=Fg_c*Dx*Dx;
figure,surf(uu,vv,abs(Fg_c))