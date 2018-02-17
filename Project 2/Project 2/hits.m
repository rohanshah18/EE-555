
function [hit] = hits (A, B)

if(any(B(:)))
    hit = max(A(B));
else
    hit = 0;
end
end