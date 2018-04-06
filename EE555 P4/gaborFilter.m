function [ Ifilt ] = gaborFilter(Image,F,theta,sigma)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    GEF = gefGenerator(F,theta,sigma);
    Ifilt = convolve2D(Image,GEF);
end

