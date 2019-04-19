X = linspace(0,10,1000);
Y1 = exp(-X)+X.*exp(-X);
Y2 = exp(-2*X)+(-1/3)*X.*exp(-.5*X);
Y3 = exp(-.75*X).*(cos(sqrt(7)*X)+sin(sqrt(7)*X));

figure
plot(X,Y1,X,Y2,X,Y3,'LineWidth',3)
legend('Critically Damped', 'Over Damped', 'Under Damped')
grid on