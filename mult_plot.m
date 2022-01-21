x = linspace(0,10,50);
y1 = sin(x);
y2 = rand(50,1);


% Top plot
subplot(121)
plot(x,y1,'')
title('Plot 1')

% Bottom plot
subplot(122)
plot(x,y2,'o')
title('Plot 2')