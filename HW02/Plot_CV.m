
% export save path
path = "D:\Matlab_Savefile\程控HW\HW02\PictureSave"


% import simout data
pulse_change = out.simout_CV.Data

% plot the picture
f1 = figure('name', 'Figure_CV')

plot(pulse_change)
title("CV pulse change")

% saveas(f1, ...
%     strcat(path, '\', 'pulse_change_CV.png'))
