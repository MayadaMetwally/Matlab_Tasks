
% Define the time delayl for each light
delay = 3; % in seconds

% Create a figure window
figure;

% Create the black rectangle
rectangle('Position',  [210, 300,70, 400], 'FaceColor', 'black');
hold on;
% Add a stick to the end of the black rectangle
rectangle('Position', [240, 100 ,10, 200], 'FaceColor', 'g');
hold on;
% Define circle parameters for the traffic light
circleRadius = 30;
circleOffset = 30; % Offset from the top of the black rectangle

% Create red circle
redCircle = rectangle('Position', [245 - circleRadius, 600 - circleOffset, 2 * circleRadius, 3 * circleRadius], 'Curvature', [1, 1], 'FaceColor', 'red');
hold on;
% Create yellow circle
yellowCircle = rectangle('Position', [245 - circleRadius, 490 - circleOffset, 2 * circleRadius, 3 * circleRadius], 'Curvature', [1, 1], 'FaceColor', 'yellow');

% Create green circle
greenCircle = rectangle('Position', [245 - circleRadius, 380 - circleOffset, 2 * circleRadius, 3 * circleRadius], 'Curvature', [1, 1], 'FaceColor', 'green');
xlim([50,500]);
ylim([50, 900]);
% Loop to simulate the traffic light
while true
    % Light up the red circle
   set(redCircle, 'FaceColor', 'red');
    set(yellowCircle, 'FaceColor', [0.1, 0.1, 0]);
    set(greenCircle, 'FaceColor', [0, 0.1, 0]);
    pause(delay);
    
    % Light up the yellow circle
    set(redCircle, 'FaceColor', [0.1, 0, 0]);
    set(yellowCircle, 'FaceColor', 'yellow');
    set(greenCircle, 'FaceColor', [0, 0.1, 0]);
    pause(delay);
    
    % Light up the green circle
    set(redCircle, 'FaceColor', [0.1, 0, 0]);
    set(yellowCircle, 'FaceColor', [0.1, 0.1, 0]);
    set(greenCircle, 'FaceColor', 'green');
    pause(delay);
end
