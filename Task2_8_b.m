orighsdata = data.Hs;

avehsdata = movavg_timecorr(data.Hs, 5);
avehsdata21 = movavg_timecorr(data.Hs, 21);
avehsdata51 = movavg_timecorr(data.Hs, 51);

subplot(3,1,1), 
plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
plot(avehsdata,'k')
ylabel('Significant Wave Height (m)')
grid MINOR
title('M=5')

subplot(3,1,2), 
plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
plot(avehsdata21,'k')
ylabel('Significant Wave Height (m)')
grid MINOR
title('M=21')

subplot(3,1,3), 
plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
plot(avehsdata51,'k')
xlabel('Time'); 
ylabel('Significant Wave Height (m)')
grid MINOR 
title('M=51')



% Set the remaining axes properties
set(subplot(3,1,1),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);

set(subplot(3,1,2),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);

set(subplot(3,1,3),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);
