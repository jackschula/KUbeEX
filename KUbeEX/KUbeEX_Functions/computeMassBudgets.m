% this function will calculate the mass budgets for the KUbeEX program

function [budget_mass, payload, payload_target, structures_and_mechanisms, ...
    structures_and_mechanisms_target, thermal_control, thermal_control_target, ...
    power_systems, power_systems_target, telemetry_tracking_command, ...
    telemetry_tracking_command_target, onboard_processing, onboard_processing_target, ...
    adcs, adcs_target, propulsion, propulsion_target, other, other_target, mass_system_margin] ...
    = computeMassBudgets( massEstimate , massSystemMargin , massContingency )

% budget mass (kg)
    budget_mass = massEstimate / (1 + massSystemMargin);

% payload
    payload = budget_mass * (31/100);
        payload_target = payload / (1 + massContingency);

% structures and mechanisms
    structures_and_mechanisms = budget_mass * (27/100);
        structures_and_mechanisms_target = structures_and_mechanisms / (1 + massContingency);

% thermal control
    thermal_control = budget_mass * (2/100);
        thermal_control_target = thermal_control / (1 + massContingency);

% power systems
    power_systems = budget_mass * (21/100);
        power_systems_target = power_systems / (1 + massContingency);

% telemetry, tracking, and command
    telemetry_tracking_command = budget_mass * (2/100);
        telemetry_tracking_command_target = telemetry_tracking_command / (1 + massContingency);

% on-board processing
    onboard_processing = budget_mass * (5/100);
        onboard_processing_target = onboard_processing / (1 + massContingency);

% attitude determination and control system
    adcs = budget_mass * (6/100);
        adcs_target = adcs / (1 + massContingency);

% propulsion systems
    propulsion = budget_mass * (3/100);
        propulsion_target = propulsion / (1 + massContingency);
        
% other systems
    other = budget_mass * (3/100);
        other_target = other / (1 + massContingency);

% Mass System Margin
    mass_system_margin = massEstimate - budget_mass;

end