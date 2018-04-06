close all; clear;
%Part 1: img = 'texture2.gif', F = 0.059; Theta = 135 degrees; sigma = 8
img2 = imread('texture2.gif');
imshow(img2,[]);
img2Filt = gaborFilter(img2,0.059,135,8);
%Cast image to uint8 and display real portion
filtDisplay = displayGabor(img2Filt);
%Compute Gaussian Smoothing
img2FiltSmooth = gaussianSmooth(img2Filt,24);
displaySmooth = displayGabor(img2FiltSmooth);