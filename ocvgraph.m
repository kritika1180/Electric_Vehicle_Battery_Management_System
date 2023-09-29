


charge = trapz(DST.Test_Times', DST.CurrentA');
fprintf('Total charge consumed: %.2f Coulombs\n', charge);
battery_capacity = 3600;  % Replace with your battery's capacity in Coulombs

% Calculate the SoC as a percentage
soc_percentage = ((battery_capacity-charge) / battery_capacity) * 100;

% Display the estimated SoC
fprintf('Estimated State of Charge (SoC): %.2f%%\n', soc_percentage);

plot(SOC_percentage, DST.Test_Times)
grid on