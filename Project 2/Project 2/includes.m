%Method: includes.m
%Purpose: Check if A intersection B = B.  This method is meant to be used
%by erosion2.m
%Inputs:
%   A: A logical 2D array of size M
%   B: A logical 2D array of size M
%Output: 1 if B is included in A, 0 otherwise.
function [include] = includes (A, B)

if(any(B(:))) %Check that B has a non-zero value. If not, max(A(B)) returns an empty array
    include = min(A(B));
else
    include = 1;
end
end