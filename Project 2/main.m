% EE 555
%
% Group Members: Rohan Shah, Tom Jarvinen, Vajiheh Farhadi
%
% Project #1
%
% Objective:
%    The objective of the project is to observe homotopic skeletonization 
%   
%
% Restrictions for executing this code:
%    The following user defined functions must be located in the same
%    folder as this code:
%        hitAndMiss.m
%        
%
%    The following images must be located in the same folder as this code:
%        penn256.gif
%        bear.gif
%
%
%    The following folder must be located in the same folder as this code:
%        Results
%
%
% Editted Last:  2/16/2018
% By: Rohan Shah
tic
clear; clc; close all;

% Task 1.1
% Filtering Salt and Pepper noise by applying series of morphological 
% operations like erosion and dilation

% Reading original images
bear = imread('bear.gif');
penn256 = imread('penn256.gif');
f1 = cast(bear, 'double');
f2 = cast(penn256, 'double');

% Number of pixels in original image
N = size(f1(:,:));

figure(1)
imshow(f1)
title('Original Bear Image')

figure(2)
imshow(f2)
title('Original Penn256 Image')

% Structuring element B1
B1 = [0,0,0;0,1,0;1,1,1];
B1 = logical(B1);
figure(3)
imshow(B1)
title('Structuring element B1')

% Applying hit and miss transformation
f1_hit_miss = hitAndMiss(f1, B1);
figure(4)
imshow(f1_hit_miss)

f1_hit_miss_comp = 1-f1_hit_miss;

% Homotopic Skeletonization: Thinning 
f1_thinned = intersection(f1, f1_hit_miss_comp);
figure(5)
imshow(f1_thinned)
toc