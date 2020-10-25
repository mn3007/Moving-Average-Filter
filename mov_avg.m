% % --- BEGIN FUNCTION --- %
function[yo]= mov_avg(x,M)

%zero padding
padding = zeros (1, M-1);
x_padded = [padding, x]; 

%filter length M
for n=1:length(x)
 y(n)=0; 
 for k=0:M-1  
     y(n) = y(n) + x_padded(n+k);
 end;
 yo(n)=y(n)/M;
end;
% --- END FUNCTION --- %