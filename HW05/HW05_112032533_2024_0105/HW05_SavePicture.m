

%% file path
date_version = "2024_0103_01"
savefile_fpath = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW05\Picture\", ...
    date_version)

mkdir(savefile_fpath)

%% Org Transfer function
% run("HW05_main01.slx")

% step change of transfer function
figure()
hold on
fig_01_01 = plot( ...
    out.simout_step_change.Time, ...
    out.simout_step_change.Data)


title_name = "StepChange_ of_ MV"
title(title_name)

saveas(fig_01_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% FOPDT Transfer function

figure()
hold on
fig_02_01 = plot(out.simout_FOPDT_step_change.Time, out.simout_FOPDT_step_change.Data)

title_name = "StepChange_ of_ FOPDT_ MV"
title(title_name)

saveas(fig_02_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% FOPDT Transfer function : control : PID coef

% ----------------------------------
% MV : mv
initial_boundary = 0; 
final_boundary = 1; 
reaction_time = 2; 
MV_change = 1; 
dead_time = 1; %sec

% Kp : slope
slope = (final_boundary - initial_boundary ) / reaction_time; 
% D : daed time
% tau : MV_change

% For PID controller:
fprintf("For mv PID controller====================\n")
fprintf("Kc: %.4f\n", 1.2 * (MV_change/ (dead_time * slope)))
fprintf("Tau_I: %.4f\n", (dead_time / 0.5))
fprintf("Tau_D: %.4f\n", (dead_time * 0.5))

%% FOPDT Transfer function : control : PID coef

figure()
hold on
fig_03_01 = plot(out.simout_FOPDT_control.Time, out.simout_FOPDT_control.Data)

title_name = "Control_ of_ FOPDT_ MV"
title(title_name)

saveas(fig_03_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Z-domain FOPDT Transfer function with ZOH

figure()
hold on
fig_04_01 = stairs(out.simout_FOPDT_ZOH.Time, out.simout_FOPDT_ZOH.Data)

title_name = "StepChange_ of_ FOPDT_ MV_ withZOH"
title(title_name)

saveas(fig_04_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Z-domain FOPDT Transfer function with ZOH : PID control

figure()
hold on
fig_04_02 = stairs(...
    out.simout_FOPDT_ZOH_PID_Control1.Time, ...
    out.simout_FOPDT_ZOH_PID_Control1.Data)

title_name = "PIDControl_ of_ FOPDT_ MV_ withZOH"
title(title_name)

saveas(fig_04_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Z-domain FOPDT Transfer function with ZOH : Deadbeat Control

figure()
hold on
fig_04_03 = stairs(...
    out.simout_FOPDT_ZOH_Deadbeat_Control.Time, ...
    out.simout_FOPDT_ZOH_Deadbeat_Control.Data)

title_name = "DeadbeatControl_ of_ FOPDT_ MV_ withZOH"
title(title_name)

saveas(fig_04_03, strcat( ...
    savefile_fpath, "\", title_name, ".png"))