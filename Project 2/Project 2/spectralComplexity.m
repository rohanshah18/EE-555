function complexity = spectralComplexity(Pect)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
N = size(Pect);
complexity = 0;
for i = 1:N(2)
    if Pect(i) ~= 0
    complexity = complexity - Pect(i) * log(Pect(i));
    end
end

