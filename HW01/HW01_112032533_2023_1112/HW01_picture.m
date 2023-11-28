%% Basic setting

addpath("./AttachedFile")
save_fpath  = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW01\PictureSave")%, ...
    % today_date)
mkdir(save_fpath)

%% Question01, 02

q02 = out.simout_0102_FcChange.Data

f02 = figure('name', 'q02_pulsecurve')

plot(q02)
title_name = "Question02_curve"; 
title(title_name)
saveas(f02, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')



%% Question03

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

HW01_model_2023_1112_P
q03_P = out.simout_03_P_controller.Data; 

f03_P = figure('name', 'q03_P_controller')
plot(q03_P(1:10))
title_name = "Question03_P_controller"; 
title(title_name)
saveas(f03_P, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')
%% Question03: P controller

HW01_model_2023_1112_PI
q03_PI = out.simout_03_PI_controller.Data; 

f03_PI = figure('name', 'q03_PI_controller')
plot(q03_PI(1:10))
title_name = "Question03_PI_controller"; 
title(title_name)
saveas(f03_PI, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')
%% Question03: P controller

HW01_model_2023_1112_PID
q03_PID = out.simout_03_PID_controller.Data; 

f03_PID = figure('name', 'q03_PID_controller')
plot(q03_PID(1:10))
title_name = "Question03_PID_controller"; 
title(title_name)
saveas(f03_PID, ...
    strcat(save_fpath, "\", title_name, ".png"), 'png')

