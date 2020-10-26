% store the peak period data in new array
origdata = data.Tp;

% perform moving averages and store
avedata = mov_avg(data.Tp, 5);
avedata21 = mov_avg(data.Tp, 21);
avedata51 = mov_avg(data.Tp, 51);

% plot the original data
subplot(3,1,1),
plot(origdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
% plot the moving average when M = 5
plot(avedata,'k')
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
% plot the moving average when M = 21
plot(avedata21,'k')
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
% plot the moving average when M = 51
plot(avedata51,'k')
%label x-axis
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
