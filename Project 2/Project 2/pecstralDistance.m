function distance = pecstralDistance(PectRef,PectTest,C)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
N = size(PectRef);
distance = 0;
for i = 1:N(2)
    distance = distance + sqrt((C(i)* (PectTest(i) - PectRef(i))^2));
end

end