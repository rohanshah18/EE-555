
function [Struct] = makecircle (radius)
x = 0:radius*2+4;
y = 0:radius*2+4;
[xx, yy] = meshgrid(x,y);
u = logical(ones(size(xx)));
u(((xx - (radius+2)).^2 + (yy-(radius+2)).^2)>(radius^2))=0;
Struct = logical(u);
end
