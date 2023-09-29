% Define your OCV vs. SOC data
SOC_percent = [0.00, 10.00, 20.00, 30.00, 40.00, 50.00, 60.00, 70.00, 80.00, 90.00, 100.00]; % State of Charge (%) values
OCV_volts = [3.30, 3.55, 3.65, 3.70, 3.75, 3.80, 3.85, 3.90, 3.95, 4.00, 4.20]; % Corresponding Open Circuit Voltage (OCV) values in volts

% Define the SOC values where you want to interpolate the OCV curve
SOC_interp = linspace(0, 100, 1000); % Interpolate at 1000 points from 0% to 100%

% Perform cubic spline interpolation
OCV_interp = interp1(SOC_percent, OCV_volts, SOC_interp, 'spline');

% Plot the original data points and the interpolated curve
plot(SOC_percent, OCV_volts, 'o', SOC_interp, OCV_interp)
xlabel('State of Charge (%)')
ylabel('Open Circuit Voltage (OCV) [V]')
title('Lithium-Ion Battery OCV vs. SOC Curve (Cubic Spline Interpolation)')
legend('Data Points', 'Interpolated Curve')
grid on