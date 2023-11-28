%% Basic setting

addpath("./AttachedFile")

today_date = "2023_1114"
save_fpath  = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW01\PictureSave", "\", ...
    today_date)
mkdir(save_fpath)

%% Question01, 02
HW01_revised02_model_2023_1114_PulseChange

q02 = out.simout_0102_FcChange.Data

f02 = figure('name', 'q02_pulsecurve')

plot(q02)
title_name = "Question02_curve"; 
title(title_name)
saveas(f02, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')



%% Question03
HW01_revised02_model_2023_1114_PulseChange

q02 = out.simout_0102_FcChange.Data

f03 = figure('name', 'q03_reactioncurve')

plot(q02(1:5000))
title_name = "Question03_curve"; 
title(title_name)
saveas(f03, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')


%% Question03: Use pulse change to decide controller parameters
clc
initial_boundary = 678.9; 
final_boundary = 681.726; 
reaction_time = 17; 
MV_change = -0.0771; 
dead_time = 1; %sec

% Kp : slope
slope = (final_boundary - initial_boundary ) / reaction_time; 
% D : daed time
% tau : MV_change

% For P controller:
fprintf("For P controller====================\n")
fprintf("Kc: %.4f\n", (MV_change/ (dead_time * slope)))

% For PI controller:
fprintf("For PI controller====================\n")
fprintf("Kc: %.4f\n", 0.9 * (MV_change/ (dead_time * slope)))
fprintf("Tau_I: %.4f\n", (dead_time / 0.3))

% For PID controller:
fprintf("For PID controller====================\n")
fprintf("Kc: %.4f\n", 1.2 * (MV_change/ (dead_time * slope)))
fprintf("Tau_I: %.4f\n", (dead_time / 0.5))
fprintf("Tau_D: %.4f\n", (dead_time * 0.5))

%% Question03: P controller

run("HW01_revised02_model_2023_1114_P")

q03_P = out.simout_03_P_controller.Data; 

f03_P = figure('name', 'q03_P_controller')
plot(q03_P)
title_name = "Question03_P_controller"; 
title(title_name)
saveas(f03_P, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')
%% Question03: PI controller

run("HW01_revised02_model_2023_1114_PI")

q03_PI = out.simout_03_PI_controller.Data; 

f03_PI = figure('name', 'q03_PI_controller')
plot(q03_PI)
title_name = "Question03_PI_controller"; 
title(title_name)
saveas(f03_PI, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')
%% Question03: PID controller

% HW01_revised02_model_2023_1114_PID
run("HW01_revised02_model_2023_1114_PID")

q03_PID = out.simout_03_PID_controller.Data; 

f03_PID = figure('name', 'q03_PID_controller')
plot(q03_PID)
title_name = "Question03_PID_controller"; 
title(title_name)
saveas(f03_PID, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')

%%
HW01_revised02_model_2023_1114_NoControl

q04_NoControl = out.simout_04_NoControl.Data; 

f04_NoControl= figure('name', 'q04_PID_controller')
plot(q04_NoControl )
title_name = "Question04_NoControl"; 
title(title_name)
saveas(f04_NoControl, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')
