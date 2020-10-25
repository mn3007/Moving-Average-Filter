% % --- BEGIN FUNCTION --- %
function[yo]= movavg_timecorr(x,M)
% Assuming that M is an odd integer
padding = zeros (1, (M-1)/2);
x_padded = [padding, x, padding];
%filter length M
for n=1:length(x)
 y(n)=0; 
 for k=0:M-1
     y(n) = y(n) + x_padded(n+k);
 end;
 yo(n)=y(n)/M;
end;
% --- END FUNCTION --- %