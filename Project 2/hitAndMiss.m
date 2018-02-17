
function [hit_and_miss] = hitAndMiss( image, struct)
f1 = image;
b = struct;

b_foreground = logical(foreground(b));
b_background = logical(1-logical(b));

f1_foreground_eroded = erosion2 (f1, b_foreground);
f1_background_eroded = erosion2 (1-f1, b_background);

%Compute intersection of two filters
hit_and_miss = intersection(f1_foreground_eroded, f1_background_eroded);

% figure(8);
% imshow(hit_and_miss);
% title('Result of hit and miss transform');
% imwrite(hit_and_miss, 'Results/f_hit_and_miss.tif')
end