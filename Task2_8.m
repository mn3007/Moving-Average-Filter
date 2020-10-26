% store the peak period data in a new array
origdata = data.Tp;

% perform moving averages and store
avetdata = movavg_timecorr(data.Tp, 5);
avetdata21 = movavg_timecorr(data.Tp, 21);
avetdata51 = movavg_timecorr(data.Tp, 51);

% plot the original data
subplot(3,1,1),
plot(origdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
% plot the time corrected moving average when M = 5 
plot(avetdata,'k')
% label y-axis
ylabel('Peak period (s)')
% toggle visibility of minor grid lines
grid MINOR
% add plot title
title('M=5')

% plot the original data
subplot(3,1,2), 
plot(origdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
% plot the time corrected moving average when M = 21
plot(avetdata21,'k')
% label y-axis
ylabel('Peak period (s)')
% toggle visibility of minor grid lines
grid MINOR
% add plot title
title('M=21')

% plot the original data
subplot(3,1,3), 
plot(origdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
% plot the time corrected moving average
plot(avetdata51,'k')
% label x-axis
xlabel('Time');
% label y-axis
ylabel('Peak period (s)')
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
