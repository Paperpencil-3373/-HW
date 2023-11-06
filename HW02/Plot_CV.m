
%% export save path

today_date = "2023_1106"

path = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW02\PictureSave\", ...
    today_date)
mkdir(path)

%% Plot: Pulse change
% import simout data
pulse_change = out.simout_CV_pulsechange.Data

% plot the picture
f1 = figure('name', 'Figure_PulseChange')

plot(pulse_change)
title("CV pulse change")

saveas(f1, ...
    strcat(path, '\', 'pulse_change_CV.png'))

%% Plot: Feedforward control
% import simout data
simout_CV_fforward = out.simout_CV_fforward.Data

% plot the picture
f2 = figure('name', 'Figure_')

plot(simout_CV_fforward)
title("Feedforward Control")

saveas(f2, ...
    strcat(path, '\', 'simout_CV_fforward.png'))


%% Plot: Feedback control
% import simout data
simout_CV_fback= out.simout_CV_fback.Data

% plot the picture
f3 = figure('name', 'Figure_')

plot(simout_CV_fback)
title("Feedback Control")

saveas(f3, ...
    strcat(path, '\', 'simout_CV_fback.png'))
