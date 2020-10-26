% store the significant wave height data in a new array
orighsdata = data.Hs;

% perform time corrected moving averages and store
avehsdata = movavg_timecorr(data.Hs, 5);
avehsdata21 = movavg_timecorr(data.Hs, 21);
avehsdata51 = movavg_timecorr(data.Hs, 51);

% plot the original data
subplot(3,1,1), plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
% plot the time corrected moving average when M = 5
plot(avehsdata,'k')
% label y-axis
ylabel('Significant Wave Height (m)')
% toggle visibility of minor grid lines
grid MINOR
% add plot title
title('M=5')

% plot the original data
subplot(3,1,2), plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
% plot the time corrected moving average when M = 21
plot(avehsdata21,'k')
% label y-axis
ylabel('Significant Wave Height (m)')
% toggle visibility of minor grid lines
grid MINOR
% add plot title
title('M=21')

% plot the original data
subplot(3,1,3), plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
% plot the time corrected moving average when M = 51
plot(avehsdata51,'k')
% label x-axis
xlabel('Time'); 
% label y-axis
ylabel('Significant Wave Height (m)')
% toggle visibility of minor grid lines
grid MINOR 
% add plot title
title('M=51')

% Set the remaining axes properties
set(subplot(3,1,1),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);

set(subplot(3,1,2),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);

set(subplot(3,1,3),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);
