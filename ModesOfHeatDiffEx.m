
n   = [1,10,100];
bn = [10,10,10];
L = 5;
k = 1;
x = linspace(0,5,500);
u = 0;
t = 0;

figure
for i = 1:500
    for j = 1:length(n)
         lambda = (n(j)^2*pi^2)/25;
         u = u + exp(-lambda*k*t)*(bn(j)*sin(sqrt(lambda)*x));
    end
    plot(x,u,'LineWidth', 2)
    axis([0 5 -25 25])
    xlabel('Space','FontSize',14); ylabel('Heat','FontSize',14);
    title('Heat Diffusion:Change t-step to see different modes decay','FontSize',14);
    if i == 1
        pause;
    end
    title(['t = ' num2str(t)]) 
    pause(.1)
    t = t+.0001;
    u = 0;
end