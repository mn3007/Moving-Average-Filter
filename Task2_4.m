origdata = data.Tp;

avedata = mov_avg(data.Tp, 5);
avedata21 = mov_avg(data.Tp, 21);
avedata51 = mov_avg(data.Tp, 51);

subplot(3,1,1),
plot(origdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
plot(avedata,'k')
ylabel('Peak period (s)')
grid MINOR
title('M=5')

subplot(3,1,2), 
plot(origdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
plot(avedata21,'k')
ylabel('Peak period (s)')
grid MINOR
title('M=21')

subplot(3,1,3), 
plot(origdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
plot(avedata51,'k')
xlabel('Time'); 
ylabel('Peak period (s)')
grid MINOR
title('M=51')

% Set the remaining axes properties
set(subplot(3,1,1),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);

set(subplot(3,1,2),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);

set(subplot(3,1,3),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);