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
f1(:,:,1) = cast(bear, 'double');
f2 = cast(penn256, 'double');

figure(1)
imshow(f1)
title('Original Bear Image')

figure(2)
imshow(f2)
title('Original Penn256 Image')

B(:,:,1) = [0,0,0;2,1,2;1,1,1];
B(:,:,2) = [2,0,0;1,1,0;1,1,2];
B(:,:,3) = [1,2,0;1,1,0;1,2,0];
B(:,:,4) = [1,1,2;1,1,0;2,0,0];
B(:,:,5) = [1,1,1;2,1,2;0,0,0];
B(:,:,6) = [2,1,1;0,1,1;0,0,2];
B(:,:,7) = [0,2,1;0,1,1;0,2,1];
B(:,:,8) = [0,0,2;0,1,1;2,1,1];

i = 1;
a=1;
x(:,:,1) = f1(:,:);

while(x(:,:,i)~=f1 | a)
    a=0;
    for j=1:8
        x(:,:,i) = thinning(x(:,:,i),B(:,:,j));
    end
    i=i+1;
    x(:,:,i) = x(:,:,i-1);
end

toc