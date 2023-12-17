
%% file path
date_version = "2023_1217_01"
savefile_fpath = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW04\Picture\", ...
    date_version)

mkdir(savefile_fpath)


%% Undecoupling 

run("HW04_undecoupling_control.slx")

% y1
figure()
fig_01 = plot(out.y1.Time, out.y1.Data)

title_name = "Undecoupling_y1"
title(title_name)

saveas(fig_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% y2
figure()
fig_02 = plot(out.y2.Time, out.y2.Data)

title_name = "Undecoupling_y2"
title(title_name)

saveas(fig_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))


%% Coupling 

run("HW04_decoupling_control.slx")

% y1
figure()
fig_01 = plot(out.y1.Time, out.y1.Data)

title_name = "Decoupling_y1"
title(title_name)

saveas(fig_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% y2
figure()
fig_02 = plot(out.y2.Time, out.y2.Data)

title_name = "Decoupling_y2"
title(title_name)

saveas(fig_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))
