%read the data into MATLAB
data = readbuoydata('045200603.txt');

% plot the significant wave height against time
subplot(2,1,1),
plot(data.Hs)
% convert serial date numbers to a datetime array
plot(datetime(data.date,'ConvertFrom','datenum'),data.Hs);
% label the tick lines of the axis using dates
datetick('x',6 ,'keepticks')
% label x-axis 
xlabel('Time'); 
% label y-axis
ylabel('Significant Wave Height (m)');
% add plot title
title('Significant Wave Height and Time');
% toggle visibility of minor grid lines
grid MINOR

% plot the peak period against time
subplot(2,1,2),
plot(data.Tp)
% convert serial date numbers to a datetime array
plot(datetime(data.date,'ConvertFrom','datenum'),data.Tp);
% label the tick lines of the axis using dates
datetick('x',6 ,'keepticks')
% label x-axis 
xlabel('Time'); 
% label y-axis 
ylabel('Peak Period (s)');
% add plot title
title('Peak Wave Period and Time');
% toggle visibility of minor grid lines
grid MINOR
