
function [hit] = hits (A, B)
%Naive Implementation is prohibitively slow for large structuring element
%hit = 0;
%N = size(B);
%for x = 1:N(1)
%  for y = 1:N(2)
%    if A(x,y) == 1 && B(x,y) == 0
%      hit = 1;
%      return;
%    end
%  end
%end 
%return;

%Faster version: is this OK?  
if(any(B(:)))
    hit = min(A(B));
else
    hit = 0;
end
end