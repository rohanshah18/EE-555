function [ displayFilt ] = displayGabor(ComplexImg)
% Normalizes a complex image for display
%grab real portion of filter
filtReal = real(ComplexImg);
%scale to range 0-255
maximum = max(max(filtReal));
minimum = min(min(filtReal));
displayFilt = filtReal - minimum;
displayFilt = displayFilt .* (255/(maximum-minimum));
%Cast to uint8
displayFilt = uint8(displayFilt);
%Display
figure;imshow(displayFilt);

end

