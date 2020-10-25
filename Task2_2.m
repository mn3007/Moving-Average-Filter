data = readbuoydata('045200603.txt');

% draw plot of significant wave height against time
subplot(2,1,1),
plot(data.Hs)
plot(datetime(data.date,'ConvertFrom','datenum'),data.Hs);
datetick('x',6 ,'keepticks')
xlabel('Time'); 
ylabel('Significant Wave Height (m)');
title('Significant Wave Height and Time');
grid MINOR

% draw plot of peak period data against time
subplot(2,1,2),
plot(data.Tp)
plot(datetime(data.date,'ConvertFrom','datenum'),data.Tp);
datetick('x',6 ,'keepticks')
xlabel('Time'); 
ylabel('Peak Period (s)');
title('Peak Wave Period and Time');
grid MINOR