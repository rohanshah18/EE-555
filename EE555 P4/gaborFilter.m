function [ Ifilt ] = gaborFilter(Image,F,theta,sigma)
%   Perform gaborFiltering on the input Image
%   Inputs: Image: image to be modified
%   	F: pixel frequency for filter
%	theta: angle for filter in degrees
%	sigma: variance for filter
    GEF = gefGenerator(F,theta,sigma);
    Ifilt = convolve2D(Image,GEF);
end

