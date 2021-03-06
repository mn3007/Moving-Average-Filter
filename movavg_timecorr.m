% % --- BEGIN FUNCTION --- %
function[yo]= movavg_timecorr(x,M)
% add a new function that calculates the time-corrected moving average of x

% create array of zeros
padding = zeros (1, (M-1)/2);
% pad array with zeros
x_padded = [padding, x, padding];
% iterate for every line of x
for n=1:length(x)
% initialise y(n)
 y(n)=0; 
 % iterate for every value of k from 0 to M-1
 for k=0:M-1
 % calculate sum
     y(n) = y(n) + x_padded(n+k);
 end;
 % calculate output
 yo(n)=y(n)/M;
end;
% --- END FUNCTION --- %
