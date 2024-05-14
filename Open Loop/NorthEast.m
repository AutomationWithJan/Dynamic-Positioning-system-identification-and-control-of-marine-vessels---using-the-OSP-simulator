signal1 = out.xydata{1}.Values.Data(:,1);
signal2 = out.xydata{1}.Values.Data(:,2);
% Plot signal1 vs. signal2 as an XY diagram
plot(signal1, signal2, 'b-');   %plotting with a blue line
hold on;
plot(signal1(1), signal2(1), 'g>', 'MarkerSize', 10, 'MarkerFaceColor', 'g'); % Adds a green marker at the start
hold on;
plot(signal1(end), signal2(end), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % Adds a red marker at the end
title('North east diagram');
ylabel('North');
xlabel('East');
grid on; % Optional: Adds a grid to the plot for better readability