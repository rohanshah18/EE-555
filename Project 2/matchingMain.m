clear;clc;close all;
%Load match1 as four seperate images
%The respective objects were manually identified using imtool
image = logical(imread('match1.gif'));
clover1 = image(25:110,40:115);
spade1 = image(20:110,115:190);
bull1 = image(115:210,40:115);
plane1 = image(120:205,115:200);
figure;imshow(spade1);figure;imshow(clover1);figure;imshow(plane1);figure;imshow(bull1);
%Compute and plot their respective size distributions and pectstrums
clover1Dist = sizeDistribution(clover1);
clover1Pect = Pecstrum(clover1Dist);
figure; plot(clover1Dist); title('Clover size distribution in match1 image');
figure; plot(clover1Pect); title('Normalized pectstrum of clover in match1 image');
spade1Dist = sizeDistribution(spade1);
spade1Pect = Pecstrum(spade1Dist);
figure; plot(spade1Dist); title('Spade size distribution in match1 image');
figure; plot(spade1Pect); title('Normalized pectstrum of spade in match1 image');
bull1Dist = sizeDistribution(bull1);
bull1Pect = Pecstrum(bull1Dist);
figure; plot(bull1Dist); title('Bull size distribution in match1 image');
figure; plot(bull1Pect); title('Normalized pectstrum of bull in match1 image');
plane1Dist = sizeDistribution(plane1);
plane1Pect = Pecstrum(plane1Dist);
figure; plot(plane1Dist); title('Plane size distribution in match1 image');
figure; plot(plane1Pect); title('Normalized pectstrum of plane in match1 image');
%Load image to match; objects in image were again manually seperated using
%imtool.
image = logical(imread('match3.gif'));
match3Objects = {image(25:110,50:125),image(25:110,125:200),image(120:220,55:135),image(120:220,135:200)};
%Compute size distributions and pectstrums
match3Dist = {sizeDistribution(match3Objects{1}),sizeDistribution(match3Objects{2}),sizeDistribution(match3Objects{3}),sizeDistribution(match3Objects{4})};
match3Pect = {Pecstrum(match3Dist{1}),Pecstrum(match3Dist{2}),Pecstrum(match3Dist{3}),Pecstrum(match3Dist{4})};
distance = 100;
%Initialize relative weights for pecstralDistance comparison.  Testing
%found that setting all weights to 1 worked sufficiently.
C = ones(1,40);
%find min spectral distance
for i = 1:4
    tempDist = pecstralDistance(spade1Pect,match3Pect{i},C)
    if  tempDist < distance
        distance = tempDist;
        match = i;
    end
end
%Display resulting match
subplot(1,2,1), imshow(spade1);subplot(1,2,2), imshow(match3Objects{match});

        