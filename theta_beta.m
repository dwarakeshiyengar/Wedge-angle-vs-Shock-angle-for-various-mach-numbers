% MATLAB code for wedge angle (theta) vs shock angle (beta) plot
% for various Mach numbers using oblique shock theta-beta-M relation


clear; clc; close all;

% Parameters
gamma = 1.4;  % Specific heat ratio
Mach_numbers = [1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6];  % Up to Mach 6
beta_min = 0;   % Minimum shock angle in degrees
beta_max = 90;  % Maximum shock angle in degrees
num_points = 300;  % Number of points for beta

% Generate beta values in degrees and radians
beta_deg = linspace(beta_min, beta_max, num_points);
beta_rad = deg2rad(beta_deg);

% Initialize figure
figure;
hold on;
grid on;

for idx = 1:length(Mach_numbers)
    M = Mach_numbers(idx);
    theta_deg = zeros(size(beta_deg));
    
    for i = 1:length(beta_rad)
        beta = beta_rad(i);
        
        % Theta-beta-M relation
        sin_beta_sq = sin(beta)^2;
        cot_beta = 1 / tan(beta);
        num = 2 * cot_beta * (M^2 * sin_beta_sq - 1);
        den = M^2 * (gamma + cos(2*beta)) + 2;
        theta = atan(num / den);
        theta_deg(i) = rad2deg(theta);
        
        % Filter invalid or out-of-range values
        if theta_deg(i) <= 0 || theta_deg(i) > 50
            theta_deg(i) = NaN;
        end
    end
    
    % Plot theta vs beta (solid lines, MATLAB auto-colors)
    plot(theta_deg, beta_deg, ...
         'LineWidth', 1.5, ...
         'DisplayName', sprintf('M = %.1f', M));
end

% Labels and title
xlabel('Wedge Angle \theta (degrees)');
ylabel('Shock Angle \beta (degrees)');
title('Wedge Angle vs Shock Angle for Various Mach Numbers');
legend('show', 'Location', 'best');
xlim([0 50]);
ylim([beta_min beta_max]);
hold off;
