
function [ReturnImage] = erosion2 (Image, Struct)
N = int16(size(Image));
M = int16(size(Struct));
Oops = logical(zeros(N));
for x = M(1)/2:N(1)- M(1)/2
  for y = M(2)/2:N(2)-M(2)/2
    imageWindow = Image(x-(M(1)/2-1):x+(M(1)/2-1),y-(M(2)/2-1):y+(M(2)/2-1));
    Oops(x,y) = includes(imageWindow,Struct);
  end
end
ReturnImage = Oops;
end
