function [ smooth ] = gaussianSmooth(Image,var)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    Kernel = circleGaussian(var);
    smooth = convolve2D(Image,Kernel);
end

