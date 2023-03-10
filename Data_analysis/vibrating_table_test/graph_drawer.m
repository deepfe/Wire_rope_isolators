close all
clear
clc

X_1g=load('AxeX_Sweep5-1000hz_1g.mat');
XY_1g=load('AxeXY_Sweep5-1000hz_1g.mat');
Y1_added_mass_1g=load('AxeY1_719gr_Sweep5-1000hz_1g.mat');
Y1_added_mass_05g=load('AxeY1_719gr_Sweep5-1000hz_05g.mat');
Y2_1g=load('AxeY2_Sweep5-1000hz_1g.mat');
Y_1g=load('AxeY_Sweep5-1000hz_1g.mat');
Y_02g=load('AxeY_Sweep5-1000hz_02g.mat');
Y_05g=load('AxeY_Sweep5-1000hz_05g.mat');

figure('Name','Transmissibility X different input')
plot(Y_1g.vcpnt_export.data(14).X,abs(Y_1g.vcpnt_export.data(14).Y)./abs(Y_1g.vcpnt_export.data(13).Y))
hold on
plot(Y_05g.vcpnt_export.data(14).X,abs(Y_05g.vcpnt_export.data(14).Y)./abs(Y_05g.vcpnt_export.data(13).Y))
hold on
plot(Y_02g.vcpnt_export.data(14).X,abs(Y_02g.vcpnt_export.data(14).Y)./abs(Y_02g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration X axis')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Input 1g','Input 0.5g','Input 0.2g')

figure('Name','Transmissibility Y different input')
plot(Y_1g.vcpnt_export.data(15).X,abs(Y_1g.vcpnt_export.data(15).Y)./abs(Y_1g.vcpnt_export.data(13).Y))
hold on
plot(Y_05g.vcpnt_export.data(15).X,abs(Y_05g.vcpnt_export.data(15).Y)./abs(Y_05g.vcpnt_export.data(13).Y))
hold on
plot(Y_02g.vcpnt_export.data(15).X,abs(Y_02g.vcpnt_export.data(15).Y)./abs(Y_02g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration Y axis')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Input 1g','Input 0.5g','Input 0.2g')

figure('Name','Transmissibility Z different input')
plot(Y_1g.vcpnt_export.data(16).X,abs(Y_1g.vcpnt_export.data(16).Y)./abs(Y_1g.vcpnt_export.data(13).Y))
hold on
plot(Y_05g.vcpnt_export.data(16).X,abs(Y_05g.vcpnt_export.data(16).Y)./abs(Y_05g.vcpnt_export.data(13).Y))
hold on
plot(Y_02g.vcpnt_export.data(16).X,abs(Y_02g.vcpnt_export.data(16).Y)./abs(Y_02g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration Z axis')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Input 1g','Input 0.5g','Input 0.2g')


figure('Name','Comparison plates X input 1g')
plot(Y_1g.vcpnt_export.data(14).X,abs(Y_1g.vcpnt_export.data(14).Y)./abs(Y_1g.vcpnt_export.data(13).Y))
hold on
plot(Y1_added_mass_1g.vcpnt_export.data(14).X,abs(Y1_added_mass_1g.vcpnt_export.data(14).Y)./abs(Y1_added_mass_1g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration X axis input 1g')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Plate','Plate+mass')

figure('Name','Comparison plates Y input 1g')
plot(Y_1g.vcpnt_export.data(15).X,abs(Y_1g.vcpnt_export.data(15).Y)./abs(Y_1g.vcpnt_export.data(13).Y))
hold on
plot(Y1_added_mass_1g.vcpnt_export.data(15).X,abs(Y1_added_mass_1g.vcpnt_export.data(15).Y)./abs(Y1_added_mass_1g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration Y axis input 1g')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Plate','Plate+mass')

figure('Name','Comparison plates Z input 1g')
plot(Y_1g.vcpnt_export.data(16).X,abs(Y_1g.vcpnt_export.data(16).Y)./abs(Y_1g.vcpnt_export.data(13).Y))
hold on
plot(Y1_added_mass_1g.vcpnt_export.data(16).X,abs(Y1_added_mass_1g.vcpnt_export.data(16).Y)./abs(Y1_added_mass_1g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration Z axis input 1g')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Plate','Plate+mass')

figure('Name','Comparison plates X input 0.5g')
plot(Y_05g.vcpnt_export.data(14).X,abs(Y_05g.vcpnt_export.data(14).Y)./abs(Y_05g.vcpnt_export.data(13).Y))
hold on
plot(Y1_added_mass_05g.vcpnt_export.data(14).X,abs(Y1_added_mass_05g.vcpnt_export.data(14).Y)./abs(Y1_added_mass_05g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration X axis input 0.5g')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Plate','Plate+mass')

figure('Name','Comparison plates Y input 0.5g')
plot(Y_05g.vcpnt_export.data(15).X,abs(Y_05g.vcpnt_export.data(15).Y)./abs(Y_05g.vcpnt_export.data(13).Y))
hold on
plot(Y1_added_mass_05g.vcpnt_export.data(15).X,abs(Y1_added_mass_05g.vcpnt_export.data(15).Y)./abs(Y1_added_mass_05g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration Y axis input 0.5g')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Plate','Plate+mass')

figure('Name','Comparison plates Z input 0.5g')
plot(Y_05g.vcpnt_export.data(16).X,abs(Y_05g.vcpnt_export.data(16).Y)./abs(Y_05g.vcpnt_export.data(13).Y))
hold on
plot(Y1_added_mass_05g.vcpnt_export.data(16).X,abs(Y1_added_mass_05g.vcpnt_export.data(16).Y)./abs(Y1_added_mass_05g.vcpnt_export.data(13).Y))
title('Transmissibility acceleration Z axis input 0.5g')
xlabel('Frequency (Hz)')
ylabel('|T|')
legend('Plate','Plate+mass')
