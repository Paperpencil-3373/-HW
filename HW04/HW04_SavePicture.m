
%% file path
date_version = "2023_1221_01"
savefile_fpath = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW04\Picture\", ...
    date_version)

mkdir(savefile_fpath)


%% Demo: Step change
% Target:
% to mimic the reaction curve by transfer function thr. FOPDT method.


run("HW04_Demo.slx")

% y1m1
figure()
hold on
fig_01_01 = plot(out.simout_y1m1.Time, out.simout_y1m1.Data)

time_const_line = (out.simout_y1m1.Data(end) - out.simout_y1m1.Data(1))*(1 - exp(-1)) + ...
    out.simout_y1m1.Data(1)

plot(...
    [out.simout_y1m1.Time(1), out.simout_y1m1.Time(end)], ...
    [time_const_line ,time_const_line])

title_name = "Step Change_ y1_ m1(F_H) 2"
title(title_name)

saveas(fig_01_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% y2m1
figure()
hold on
fig_02_01 = plot(out.simout_y2m1.Time, out.simout_y2m1.Data)

time_const_line = (out.simout_y2m1.Data(end) - out.simout_y2m1.Data(1))*(1 - exp(-1)) + ...
    out.simout_y2m1.Data(1)

plot(...
    [out.simout_y2m1.Time(1), out.simout_y2m1.Time(end)], ...
    [time_const_line ,time_const_line])

title_name = "Step Change_ y2_ m1(F_H) 2"
title(title_name)

saveas(fig_02_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))


% y1m2
figure()
hold on
fig_01_02 = plot(out.simout_y1m2.Time, out.simout_y1m2.Data)


time_const_line = (out.simout_y1m2.Data(end) - out.simout_y1m2.Data(1))*(1 - exp(-1)) + ...
    out.simout_y1m2.Data(1)

plot(...
    [out.simout_y1m2.Time(1), out.simout_y1m2.Time(end)], ...
    [time_const_line ,time_const_line])

title_name = "Step Change_ y1_ m2(F_C) 4"
title(title_name)

saveas(fig_01_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% y2m2
figure()
hold on
fig_02_02 = plot(out.simout_y2m2.Time, out.simout_y2m2.Data)


time_const_line = (out.simout_y2m2.Data(end) - out.simout_y2m2.Data(1))*(1 - exp(-1)) + ...
    out.simout_y2m2.Data(1)

plot(...
    [out.simout_y2m2.Time(1), out.simout_y2m2.Time(end)], ...
    [time_const_line ,time_const_line])

title_name = "Step Change_ y2_ m2(F_C) 4"
title(title_name)

saveas(fig_02_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Close figure window
close all

%% Transfer Function: 


run("HW04_TransferFunc.slx")


% y1m1
figure()
hold on
fig_01_01 = plot(out.simout_couple_stepchangeFH_h.Time, out.simout_couple_stepchangeFH_h.Data)

% time_const_line = (out.simout_y1m1.Data(end) - out.simout_y1m1.Data(1))*(1 - exp(-1)) + ...
%     out.simout_y1m1.Data(1)

% plot(...
%     [out.simout_y1m1.Time(1), out.simout_y1m1.Time(end)], ...
%     [time_const_line ,time_const_line])

title_name = "TransferFunc_ Step Change_ y1_ m1(F_H) 2"
title(title_name)

saveas(fig_01_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% y2m1
figure()
hold on
fig_02_01 = plot(out.simout_couple_stepchangeFH_T_out.Time, out.simout_couple_stepchangeFH_T_out.Data)

% time_const_line = (out.simout_y2m1.Data(end) - out.simout_y2m1.Data(1))*(1 - exp(-1)) + ...
%     out.simout_y2m1.Data(1)
% 
% plot(...
%     [out.simout_y2m1.Time(1), out.simout_y2m1.Time(end)], ...
%     [time_const_line ,time_const_line])

title_name = "TransferFunc_ Step Change_ y2_ m1(F_H) 2"
title(title_name)

saveas(fig_02_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))


% y1m2
figure()
hold on
fig_01_02 = plot(out.simout_couple_stepchangeFC_h.Time, out.simout_couple_stepchangeFC_h.Data)


% time_const_line = (out.simout_y1m2.Data(end) - out.simout_y1m2.Data(1))*(1 - exp(-1)) + ...
%     out.simout_y1m2.Data(1)
% 
% plot(...
%     [out.simout_y1m2.Time(1), out.simout_y1m2.Time(end)], ...
%     [time_const_line ,time_const_line])

title_name = "TransferFunc_ Step Change_ y1_ m2(F_C) 4"
title(title_name)

saveas(fig_01_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% y2m2
figure()
hold on
fig_02_02 = plot(out.simout_couple_stepchangeFC_T_out.Time, out.simout_couple_stepchangeFC_T_out.Data)


% time_const_line = (out.simout_y2m2.Data(end) - out.simout_y2m2.Data(1))*(1 - exp(-1)) + ...
%     out.simout_y2m2.Data(1)
% 
% plot(...
%     [out.simout_y2m2.Time(1), out.simout_y2m2.Time(end)], ...
%     [time_const_line ,time_const_line])

title_name = "TransferFunc_ Step Change_ y2_ m2(F_C) 4"
title(title_name)

saveas(fig_02_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Close figure window
close all

%%
run("HW04_DecouplingControl_stepchange.slx")


% y1m1
figure()
hold on
fig_01_01 = plot(out.simout_decouple_stepchangeu1_h.Time, out.simout_decouple_stepchangeu1_h.Data)

time_const_line = (out.simout_decouple_stepchangeu1_h.Data(end) - out.simout_decouple_stepchangeu1_h.Data(1))*(1 - exp(-1)) + ...
    out.simout_decouple_stepchangeu1_h.Data(1)

plot(...
    [out.simout_decouple_stepchangeu1_h.Time(1), out.simout_decouple_stepchangeu1_h.Time(end)], ...
    [time_const_line ,time_const_line])

title_name = "TransferFunc_ Step Change_ y1_ u1 1"
title(title_name)

saveas(fig_01_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% y2m1
figure()
hold on
fig_02_01 = plot(out.simout_decouple_stepchangeu1_T_out.Time, out.simout_decouple_stepchangeu1_T_out.Data)

time_const_line = (out.simout_decouple_stepchangeu1_T_out.Data(end) - out.simout_decouple_stepchangeu1_T_out.Data(1))*(1 - exp(-1)) + ...
    out.simout_decouple_stepchangeu1_T_out.Data(1)

plot(...
    [out.simout_decouple_stepchangeu1_T_out.Time(1), out.simout_decouple_stepchangeu1_T_out.Time(end)], ...
    [time_const_line ,time_const_line])

title_name = "TransferFunc_ Step Change_ y2_ u1 1"
title(title_name)

saveas(fig_02_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))


% y1m2
figure()
hold on
fig_01_02 = plot(out.simout_decouple_stepchangeu2_h.Time, out.simout_decouple_stepchangeu2_h.Data)

time_const_line = (out.simout_decouple_stepchangeu2_h.Data(end) - out.simout_decouple_stepchangeu2_h.Data(1))*(1 - exp(-1)) + ...
    out.simout_decouple_stepchangeu2_h.Data(1)

plot(...
    [out.simout_decouple_stepchangeu2_h.Time(1), out.simout_decouple_stepchangeu2_h.Time(end)], ...
    [time_const_line ,time_const_line])

title_name = "TransferFunc_ Step Change_ y1_ u2 1"
title(title_name)

saveas(fig_01_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% y2m2
figure()
hold on
fig_02_02 = plot(out.simout_decouple_stepchangeu2_T_out.Time, out.simout_decouple_stepchangeu2_T_out.Data)

time_const_line = (out.simout_decouple_stepchangeu2_T_out.Data(end) - out.simout_decouple_stepchangeu2_T_out.Data(1))*(1 - exp(-1)) + ...
    out.simout_decouple_stepchangeu2_T_out.Data(1)

plot(...
    [out.simout_decouple_stepchangeu2_T_out.Time(1), out.simout_decouple_stepchangeu2_T_out.Time(end)], ...
    [time_const_line ,time_const_line])

title_name = "TransferFunc_ Step Change_ y2_ u2 1"
title(title_name)

saveas(fig_02_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))


%% Close figure window
close all

%% Decoupling Control: Result



