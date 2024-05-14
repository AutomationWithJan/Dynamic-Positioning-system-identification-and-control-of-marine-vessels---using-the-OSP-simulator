
%RealModel
signal1 = out.Y(:,1);
signal2 = out.Y(:,2);



% Plot signal1 vs. signal2 as an XY diagram
plot(signal2, signal1, 'b-');   %plotting with a blue line
hold on;

% Adds a green marker at the start
plot(signal1(1), signal2(1), 'g>', 'MarkerSize', 10, 'MarkerFaceColor', 'g'); 


% Adds a red marker at the end
plot(signal2(end), signal1(end), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); 

title('North east diagram');
ylabel('North');
xlabel('East');
grid on; % Adds a grid to the plot for better readability
legend('Real model','Start position',...
    'End position');
xlim([-5 5]);
ylim([-1 11]);