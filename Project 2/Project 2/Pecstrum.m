function Pect = Pecstrum(dist)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a = size(dist);
area = max(dist);
Pect(1:a(2)) = 0;
for i=2:a(2)
    Pect(i) = (dist(i-1) - dist(i));
    if Pect(i) ~= 0
        Pect(i) = Pect(i)/area;
    end
end

end

