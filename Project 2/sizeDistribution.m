function distribution = sizeDistribution(image)
%SizeDistribution computes the size distribution of the input image
%   inputs: binary image containing size distribution to be computed.
%   output: Vector containing area of radius in the image
distribution(1:40) = 0;
size = 1;
iterator = 1;
while size > 0
   %Compute size distribution at each whole number radius
   B = makecircle(iterator);
   XrB = opening(image,B);
   size = min(nnz(XrB),nnz(image));
   distribution(iterator) = size;
   iterator = iterator + 1;
end

end

