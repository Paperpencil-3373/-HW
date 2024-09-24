
%%
date_version = "2024_0110_01"
savefile_fpath = strcat( ...
    "D:\Matlab_Savefile\程控HW\HW_FinalExam_TakeHome\Picture\", ...
    date_version)

mkdir(savefile_fpath)

%% Q01 


%% Q02 (Discrete)
% layout

% constant : k_c
F_bar = 3.5; % (m^3/ min)
h_bar = 4; %(m)

k_c = F_bar/ (h_bar)^(1/ 2)

fprintf("k_c * h^(1/ 2) = F; k_c = %.4f\n", k_c)

%% Q03 (Continuous)

%% Q03: Step change F_C

run("main031_StepChange_FC.slx")

%%
% result : h
figure()
hold on
fig_03_01 = plot(out.simout_Q03_h_stepchange_F_C.Time, out.simout_Q03_h_stepchange_F_C.Data)

title_name = "StepChange_ of_ F_C_ h"
title(title_name)

saveas(fig_03_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% result : T
figure()
hold on
fig_03_02 = plot(out.simout_Q03_T_stepchange_F_C.Time, out.simout_Q03_T_stepchange_F_C.Data)

title_name = "StepChange_ of_ F_C_ T"
title(title_name)

saveas(fig_03_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Q03: Step change F_H

run("main032_StepChange_FH.slx")

%% 
% result : h
figure()
hold on
fig_03_11 = plot(out.simout_Q03_h_stepchange_F_H.Time, out.simout_Q03_h_stepchange_F_H.Data)

title_name = "StepChange_ of_ F_H_ h"
title(title_name)

saveas(fig_03_11, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% result : T
figure()
hold on
fig_03_12 = plot(out.simout_Q03_T_stepchange_F_H.Time, out.simout_Q03_T_stepchange_F_H.Data)

title_name = "StepChange_ of_ F_H_ T"
title(title_name)

saveas(fig_03_12, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Q03: Step change h
% Step change : h : 4 -> 5

run("main030_PID.slx")

%%
% result : h
figure()
hold on
fig_03_21 = plot(out.simout_Q03_h_stepchange_h.Time, out.simout_Q03_h_stepchange_h.Data)
simout_Q03_h_stepchange_h_Time = out.simout_Q03_h_stepchange_h.Time
simout_Q03_h_stepchange_h_Data = out.simout_Q03_h_stepchange_h.Data


title_name = "StepChange_ of_ h_ h"
title(title_name)

saveas(fig_03_21, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% result : T
figure()
hold on
fig_03_22 = plot(out.simout_Q03_T_stepchange_h.Time, out.simout_Q03_T_stepchange_h.Data)
simout_Q03_T_stepchange_h_Time = out.simout_Q03_T_stepchange_h.Time
simout_Q03_T_stepchange_h_Data = out.simout_Q03_T_stepchange_h.Data

title_name = "StepChange_ of_ h_ T"
title(title_name)

saveas(fig_03_22, strcat( ...
    savefile_fpath, "\", title_name, ".png"))


%% Q04 (Continuous)
%% Q04: FOPDT 
run("main040_FOPDT.slx")

%% Q04: FOPDT: Decoupling

run("main041_Decouple.slx")
%% Q05 (Continuous)

run("main050_Decouple_PID.slx")
%%
% result : h
figure()
hold on
fig_05_01 = plot(out.simout_Q05_h_Decouple_stepchange_h.Time, out.simout_Q05_h_Decouple_stepchange_h.Data)
simout_Q05_h_Decouple_stepchange_h_Time = out.simout_Q05_h_Decouple_stepchange_h.Time
simout_Q05_h_Decouple_stepchange_h_Data = out.simout_Q05_h_Decouple_stepchange_h.Data

title_name = "Decouple_ PID_ h"
title(title_name)

saveas(fig_05_01, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

% result : T
figure()
hold on
fig_05_02 = plot(out.simout_Q05_T_Decouple_stepchange_h.Time, out.simout_Q05_T_Decouple_stepchange_h.Data)
simout_Q05_T_Decouple_stepchange_h_Time = out.simout_Q05_T_Decouple_stepchange_h.Time
simout_Q05_T_Decouple_stepchange_h_Data = out.simout_Q05_T_Decouple_stepchange_h.Data

title_name = "Decouple_ PID_ T"
title(title_name)

saveas(fig_05_02, strcat( ...
    savefile_fpath, "\", title_name, ".png"))

%% Q06: Comparison
%%

% result : h
figure()
hold on

plot(simout_Q03_h_stepchange_h_Time, simout_Q03_h_stepchange_h_Data)
plot(simout_Q05_h_Decouple_stepchange_h_Time, simout_Q05_h_Decouple_stepchange_h_Data)


title_name = "Comparison_ Couple_ Decouple_ h"
title(title_name)
legend("Couple", "Decouple")

saveas(gcf, strcat( ...
    savefile_fpath, "\", title_name, ".png"))


%% 
% result : T
figure()
hold on
plot(simout_Q03_T_stepchange_h_Time, simout_Q03_T_stepchange_h_Data)
plot(simout_Q05_T_Decouple_stepchange_h_Time, simout_Q05_T_Decouple_stepchange_h_Data)


title_name = "Comparison_ Couple_ Decouple_ T"
title(title_name)
legend("Couple", "Decouple")

saveas(gcf, strcat( ...
    savefile_fpath, "\", title_name, ".png"))