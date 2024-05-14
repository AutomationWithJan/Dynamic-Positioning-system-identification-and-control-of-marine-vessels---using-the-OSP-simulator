
%RealModel
signal1 = out.Y(:,1);
signal2 = out.Y(:,2);
%KalmanFilter
signal1Kalman = out.X(:,1);
signal2Kalman = out.X(:,2);


% Plot signal1 vs. signal2 as an XY diagram
plot(signal1, signal2, 'b-');   %plotting with a blue line
hold on;
plot(signal1Kalman, signal2Kalman, 'r-');   %plotting with a red line
hold on;
plot(signal1(1), signal2(1), 'g>', 'MarkerSize', 10, 'MarkerFaceColor', 'g'); % Adds a green marker at the start
plot(signal1Kalman(1), signal2Kalman(1), 'g>', 'MarkerSize', 10, 'MarkerFaceColor', 'g'); % Adds a green marker at the start
hold on;
plot(signal1(end), signal2(end), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % Adds a red marker at the end
plot(signal1Kalman(end), signal2Kalman(end), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'b'); % Adds a red marker at the end
title('North east diagram');
ylabel('North');
xlabel('East');
grid on; % Optional: Adds a grid to the plot for better readability
legend('Real model','Estimated values','Start position Real model','Start position estimated model', 'End Position real model','End Position estimated model')