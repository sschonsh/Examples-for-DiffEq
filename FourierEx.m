
clear; clc; close all; % clear memory and command window, close all figures

t = -1.5:0.005:3.5; % times over which to plot FS

Nval = [1, 3, 5, 51]; % upper limits for n in summation
figure(1);
% Build square wave using increasing number of terms
for in = 1:4
        v = 0;
        subplot(2,2,in);
        % plot of true square wave
        plot([-1.5, -1, -1,  0, 0, 1,  1,  2, 2, 3,  3, 3.5],...
        [1,    1, -1, -1, 1, 1, -1, -1, 1, 1, -1,  -1],'k-.','LineWidth',2);
        hold on;
    for n = 1:2:Nval(in)
          harm = 4*sin(n*pi*t)/(n*pi);
          v    = v + harm;
          plot(t,harm,'b--','LineWidth',1); % plot each harmonic
    end
    plot(t,v,'r-','LineWidth',2); % plot sum of all terms/harmonics
    hold off;
    xlabel('time, sec','FontSize',14); ylabel('FS Approx to v(t)','FontSize',14);
    title(['Fourier Series Approx w/',num2str(Nval(in)),' Terms'],'FontSize',14);
end        
      