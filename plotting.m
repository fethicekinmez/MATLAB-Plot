clearvars, clc

t=0:0.1:2*pi;
y=sin(t);
z=cos(t);

%%
figure('Position', [90 90 900 600])
% plot(t,y,'LineWidth',2, 'LineStyle','--','Color','red')
plot(t, y, '--r', 'LineW', 2)
hold on; grid on;
plot(t, z, 'sg', 'LineWidth', 2)
xlabel('Time(s)')
ylabel('Amplitude(m)')
legend('Sine', 'Consine', 'Location','southeast')
set(gca, 'FontSize', 15)

%%
figure
subplot(2,2,1)
plot(t,y)
title('sin(t)')
grid on;
subplot(2,2,2)
plot(t,z)
hold on; grid on;
plot(t, -z)
title('cos(t) & -cos(t)')
legend('cos(t)', '- cos(t)')
subplot(2,2,3)
plot(t, y+z)
title('sin(t) + cos(t)')
grid on;
subplot(2,2,4)
plot(t, y.*z)
title('sin(t) x cos(t)')
grid on;

%% Plotting two signals have the different metrics

figure
plot(t,2.*y, 'b', 'LineWidth', 2)
ylabel('Amplitude (V)')
yyaxis right
plot(t, z, 'r', 'LineWidth', 2)
ylabel('Amplitude (psi)')
yyaxis left
xlabel('Time(s)')
set(gca, 'ycolor', 'r')
yyaxis left
set(gca, 'ycolor', 'b')
legend('sin(t)', 'cos(t)', 'Location', 'southoutside')

%% 
figure
plot(t,y) % Plot the sine wave against time
xlabel('Time(s)') % Label the x-axis as 'Time(s)'
ylabel('Amplitude(m)') % Label the y-axis as 'Amplitude(m)'
title('Sine Wave'); % Set the title of the plot to 'Sine Wave'
grid on; % Enable the grid on the plot for better visibility
xlim([-2*pi 2*pi]); % Set the limits of the x-axis from -2π to 2π
ylim([-2 2]); % Set the limits of the y-axis from -2 to 2

xticks(0:pi/3:2*pi) % Define the x-ticks at intervals of π/3 from 0 to 2π
xticklabels(["0", "1/3\pi", "2/3\pi", "\pi", "4/3\pi", "5/3\pi", "2\pi"]) % Set custom labels for the x-ticks

saveas(gca, 'grafic.png') % Save the current figure as 'grafic.png'