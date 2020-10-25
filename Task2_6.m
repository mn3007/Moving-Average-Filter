orighsdata = data.Hs;

avehsdata = mov_avg(data.Hs, 5);
avehsdata21 = mov_avg(data.Hs, 21);
avehsdata51 = mov_avg(data.Hs, 51);

subplot(3,1,1), plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
subplot(3,1,1),plot(avehsdata,'k')
subplot(3,1,2), plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
subplot(3,1,2),plot(avehsdata21,'k')
subplot(3,1,3), plot(orighsdata,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
subplot(3,1,3),plot(avehsdata51,'k')

subplot(3,1,1), ylabel('Significant Wave Height (m)')
subplot(3,1,1), grid MINOR
subplot(3,1,2), ylabel('Significant Wave Height (m)')
subplot(3,1,2), grid MINOR
subplot(3,1,3), grid MINOR
subplot(3,1,1), title('M=5')
subplot(3,1,2), title('M=21')
subplot(3,1,3), title('M=51')
subplot(3,1,3), xlabel('Time'); ylabel('Significant Wave Height (m)')

% Set the remaining axes properties
set(subplot(3,1,1),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);

set(subplot(3,1,2),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);

set(subplot(3,1,3),'XTick',[0 250 500 750 1000 1250 1500],'XTickLabel',...
    ['03/01';'03/06';'03/11';'03/16';'03/21';'03/26';'03/31']);
