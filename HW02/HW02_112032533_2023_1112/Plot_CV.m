
%% export save path

today_date = "2023_1114"

save_fpath = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW02\PictureSave", "\", ...
    today_date)
mkdir(save_fpath)

%% Plot: No control
% import simout data
NoControl= out.simout_CV_NoControl.Data

% plot the picture
f0 = figure('name', 'Figure_NoControl')

plot(NoControl)
title("CV NoControl")

saveas(f0, ...
    strcat(save_fpath , '\', 'NoControl_CV.png'))

%% Plot: Pulse change
% import simout data
pulse_change = out.simout_CV_pulsechange.Data

% plot the picture
f1 = figure('name', 'Figure_StepChange')

plot(pulse_change)
title("CV pulse change")

saveas(f1, ...
    strcat(save_fpath , '\', 'Step_change_CV.png'))

%% Plot: Feedforward control
% import simout data
simout_CV_fforward = out.simout_CV_fforward.Data

% plot the picture
f2 = figure('name', 'Figure_')

plot(simout_CV_fforward)
title("Feedforward Control")

saveas(f2, ...
    strcat(save_fpath , '\', 'simout_CV_fforward.png'))


%% Plot: Feedback control
% import simout data
simout_CV_fback= out.simout_CV_fback.Data

% plot the picture
f3 = figure('name', 'Figure_')

plot(simout_CV_fback)
title("Feedback Control")

saveas(f3, ...
    strcat(save_fpath , '\', 'simout_CV_fback.png'))

%% 
close all
