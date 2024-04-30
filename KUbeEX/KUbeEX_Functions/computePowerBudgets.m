% this function will calculate the power budgets for the KUbeEX program

function [budget_power, payload_power, payload_target_power, structures_and_mechanisms_power, ...
    structures_and_mechanisms_target_power, thermal_control_power, thermal_control_target_power, ...
    power_systems_power, power_systems_target_power, telemetry_tracking_command_power, ...
    telemetry_tracking_command_target_power, onboard_processing_power, onboard_processing_target_power, ...
    adcs_power, adcs_target_power, power_system_margin] ...
    = computePowerBudgets( powerEstimate , powerSystemMargin , powerContingency )

% budget power (W)
    budget_power = powerEstimate / (1 + powerSystemMargin);

% payload
    payload_power = budget_power * (46/100);
        payload_target_power = payload_power / (1 + powerContingency);

% structures and mechanisms
    structures_and_mechanisms_power = budget_power * (1/100);
        structures_and_mechanisms_target_power = structures_and_mechanisms_power / (1 + powerContingency);

% thermal control
    thermal_control_power = budget_power * (10/100);
        thermal_control_target_power = thermal_control_power / (1 + powerContingency);

% power
    power_systems_power = budget_power * (9/100);
        power_systems_target_power = power_systems_power / (1 + powerContingency);

% telemetry, tracking, and command
    telemetry_tracking_command_power = budget_power * (12/100);
        telemetry_tracking_command_target_power = telemetry_tracking_command_power / (1 + powerContingency);

% on-board processing
    onboard_processing_power = budget_power * (12/100);
        onboard_processing_target_power = onboard_processing_power / (1 + powerContingency);
        
% attitude determination and control system
    adcs_power = budget_power * (10/100);
        adcs_target_power = adcs_power / (1 + powerContingency);
        
% Power System Margin
    power_system_margin = powerEstimate - budget_power;

end