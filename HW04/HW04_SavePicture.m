
%% file path
date_version = "2023_1220_01"
savefile_fpath = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW04\Picture\", ...
    date_version)

mkdir(savefile_fpath)


%% Step change

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

title_name = "Step Change_ y1_ m2(F_H) 4"
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

title_name = "Step Change_ y2_ m2(F_H) 4"
title(title_name)

saveas(fig_02_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Close figure window
close all

%% 

