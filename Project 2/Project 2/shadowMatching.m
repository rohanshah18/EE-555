image = logical( imread('shadow1.gif'));
%Manually extract the 4 solid characters in the original image
Objects = {image(70:150,5:55),image(80:145,55:130),image(80:155,130:175),image(80:155,175:225)};
imshow(Objects{1}); figure; imshow(Objects{2}); figure; imshow(Objects{3}); figure; imshow(Objects{4});
shadowDist = {sizeDistribution(Objects{1}),sizeDistribution(Objects{2}),sizeDistribution(Objects{3}),sizeDistribution(Objects{4})};
shadowPect = {Pecstrum(shadowDist{1}),Pecstrum(shadowDist{2}),Pecstrum(shadowDist{3}),Pecstrum(shadowDist{4})};
%Manually extract all 8 objects in the rotated image