clear all
close all
clc

load '20210226164002.102_Hood Data 003 Heather Moss_ANALYSED.mat'
E003.HRR_OC = Q_OC__O2_CO2_CO;
E003.HRR_CDG = Q_CDG__CO2_CO;
E003.mlr = mlr_smooth;
E003.mass_flow.CO = m_duct_CO;
E003.mass_flow.CO2 = m_duct_CO2;
E003.test_time = test_time;

load '20210227144545.549_Hood Data 004 MW base_ANALYSED.mat'
E004.HRR_OC = Q_OC__O2_CO2_CO;
E004.HRR_CDG = Q_CDG__CO2_CO;
E004.mlr = mlr_smooth;
E004.mass_flow.CO = m_duct_CO;
E004.mass_flow.CO2 = m_duct_CO2;
E004.test_time = test_time;

load '20210301125623.242_Hood Data 005 wet heather_ANALYSED.mat'
E005.HRR_OC = Q_OC__O2_CO2_CO;
E005.HRR_CDG = Q_CDG__CO2_CO;
E005.mlr = mlr_smooth;
E005.mass_flow.CO = m_duct_CO;
E005.mass_flow.CO2 = m_duct_CO2;
E005.test_time = test_time;

load '20210301144816.838_Hood Data 006 wetted heather_ANALYSED.mat'
E006.HRR_OC = Q_OC__O2_CO2_CO;
E006.HRR_CDG = Q_CDG__CO2_CO;
E006.mlr = mlr_smooth;
E006.mass_flow.CO = m_duct_CO;
E006.mass_flow.CO2 = m_duct_CO2;
E006.test_time = test_time;

load '20210302101523.065_Hood Data 007 wet moss dry heather_ANALYSED.mat'
E007.HRR_OC = Q_OC__O2_CO2_CO;
E007.HRR_CDG = Q_CDG__CO2_CO;
E007.mlr = mlr_smooth;
E007.mass_flow.CO = m_duct_CO;
E007.mass_flow.CO2 = m_duct_CO2;
E007.test_time = test_time;

clearvars -except E003 E004 E005 E006 E007


% start by plotting the energy release

HRR_fig = figure;
hold on
box on
plot(E003.test_time, E003.HRR_OC)
plot(E004.test_time, E004.HRR_OC)
plot(E005.test_time, E005.HRR_OC)
plot(E006.test_time, E006.HRR_OC)
plot(E007.test_time, E007.HRR_OC)
xlim([0 600])
ylim([0 1000])
legend('003', '004', '005', '006', '007')
xlabel('Time from ignition, s')
ylabel('Energy release rate, kW')
print(HRR_fig, 'fig_HRR.png', '-dpng')


HRR_fig_CDG = figure;
hold on
box on
plot(E003.test_time, E003.HRR_CDG)
plot(E004.test_time, E004.HRR_CDG)
plot(E005.test_time, E005.HRR_CDG)
plot(E006.test_time, E006.HRR_CDG)
plot(E007.test_time, E007.HRR_CDG)
xlim([0 600])
ylim([0 1000])
legend('003', '004', '005', '006', '007')
xlabel('Time from ignition, s')
ylabel('Energy release rate, kW')
print(HRR_fig_CDG, 'fig_CDG.png', '-dpng')

% start by plotting the mlr

mlr_fig = figure;
hold on
box on
plot(E003.test_time(1:end-1), E003.mlr)
plot(E004.test_time(1:end-1), E004.mlr)
plot(E005.test_time(1:end-1), E005.mlr)
plot(E006.test_time(1:end-1), E006.mlr)
plot(E007.test_time(1:end-1), E007.mlr)
xlim([0 600])
ylim([0 100])
legend('003', '004', '005', '006', '007')
xlabel('Time from ignition, s')
ylabel('Mass loss rate, g/s')
print(mlr_fig, 'fig_mlr.png', '-dpng')


