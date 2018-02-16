%Function dilation
%Purpose: Compute dilation of Image by structuring element Struct
%Inputs: 
%   Image: 2D logical array. Note: 0 values in image are treated as
%   foreground.  1's are treated as background.  Image is assumed to be
%   larger than Struct.
%   Struct: 2D logical array.  Struct is assumed to be symmetrical about
%   the origin.  The origin is taken to be the central value in Struct.
%Output: The dilated image is returned.
function [ReturnImage] = dilation2 (Image, Struct)
N = int16(size(Image));
M = int16(size(Struct));
Temp = logical(zeros(N));
%Go through Image array, ignoring edge values of the image where border
%effects will cause errors.  Image should be zero padded if border
%artifacts are to be preserved.
for x = M(1)/2:N(1)- M(1)/2
  for y = M(2)/2:N(2)-M(2)/2
      %Find local neighborhood for 'hits' operation
    imageWindow = Image(x-(M(1)/2-1):x+(M(1)/2-1),y-(M(2)/2-1):y+(M(2)/2-1));
      %Compute value of pixel at point x,y
    Temp(x,y) = hits (imageWindow,Struct);
  end
end
ReturnImage = Temp;
end
