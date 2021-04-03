clear all
close all
clc


E003.HF_heather = readmatrix('Burn3_TC_and_HF.csv', 'Range', [21 4 2000 4])./0.166E-3;
E003.HF_moss = readmatrix('Burn3_TC_and_HF.csv', 'Range', [21 5 2000 5])./0.162E-3;
E003.time = readmatrix('Burn3_TC_and_HF.csv', 'Range', [21 1 2000 1]);
E003.temps = readmatrix('Burn3_TC_and_HF.csv', 'Range', [21 6 2000 23]);

E004.HF_heather = readmatrix('Burn4_TC_and_HF.csv', 'Range', [21 4 2000 4])./0.166E-3;
E004.HF_moss = readmatrix('Burn4_TC_and_HF.csv', 'Range', [21 5 2000 5])./0.162E-3;
E004.time = readmatrix('Burn4_TC_and_HF.csv', 'Range', [21 1 2000 1]);
E004.temps = readmatrix('Burn4_TC_and_HF.csv', 'Range', [21 6 2000 23]);

E005.HF_heather = readmatrix('Burn5_TC_and_HF.csv', 'Range', [21 4 2000 4])./0.166E-3;
E005.HF_moss = readmatrix('Burn5_TC_and_HF.csv', 'Range', [21 5 2000 5])./0.162E-3;
E005.time = readmatrix('Burn5_TC_and_HF.csv', 'Range', [21 1 2000 1]);
E005.temps = readmatrix('Burn5_TC_and_HF.csv', 'Range', [21 6 2000 23]);

E006.HF_heather = readmatrix('Burn6_TC_and_HF.csv', 'Range', [21 4 2000 4])./0.166E-3;
E006.HF_moss = readmatrix('Burn6_TC_and_HF.csv', 'Range', [21 5 2000 5])./0.162E-3;
E006.time = readmatrix('Burn6_TC_and_HF.csv', 'Range', [21 1 2000 1]);
E006.temps = readmatrix('Burn6_TC_and_HF.csv', 'Range', [21 6 2000 23])

E007.HF_heather = readmatrix('Burn7_TC_and_HF.csv', 'Range', [21 4 2000 4])./0.166E-3;
E007.HF_moss = readmatrix('Burn7_TC_and_HF.csv', 'Range', [21 5 2000 5])./0.162E-3;
E007.time = readmatrix('Burn7_TC_and_HF.csv', 'Range', [21 1 2000 1]);
E007.temps = readmatrix('Burn7_TC_and_HF.csv', 'Range', [21 6 2000 23]);

% start by plotting the heather hf

hf_heather = figure;
hold on
box on
plot(E003.time, E003.HF_heather)
plot(E004.time, E004.HF_heather)
plot(E005.time, E005.HF_heather)
plot(E006.time, E006.HF_heather)
plot(E007.time, E007.HF_heather)
xlim([0 2000])
%ylim([0 2000])
legend('003', '004', '005', '006', '007')
xlabel('Time from ignition, s')
ylabel('Heat flux, kW/m^2')
print(hf_heather, 'fig_HF_heather.png', '-dpng')


hf_moss = figure;
hold on
box on
plot(E003.time, E003.HF_moss)
plot(E004.time, E004.HF_moss)
plot(E005.time, E005.HF_moss)
plot(E006.time, E006.HF_moss)
plot(E007.time, E007.HF_moss)
xlim([0 2000])
%ylim([0 2000])
legend('003', '004', '005', '006', '007')
xlabel('Time from ignition, s')
ylabel('Heat flux, kW/m^2')
print(hf_moss, 'fig_HF_moss.png', '-dpng')

temps_plot = figure;
hold on 
box on
subplot(1,5,1)
plot(E003.time, E003.temps)
subplot(1,5,2)
plot(E004.time, E004.temps)
subplot(1,5,3)
plot(E005.time, E005.temps)
subplot(1,5,4)
plot(E006.time, E006.temps)
subplot(1,5,5)
plot(E007.time, E007.temps)