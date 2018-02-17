function distribution = sizeDistribution(image)
%SizeDistribution computes the size distribution of the input image
%   inputs: binary image containing size distribution to be computed.
%   output: Vector containing area of radius in the image
distribution(1:20) = 0;
size = 1;
iterator = 1;
C = logical(zeros(43));
B = logical(ones(3));
C(21:23,21:23) = B;
while size > 0
   %Compute size distribution at each whole number radius
   XrB = opening(image,C);
   size = min(nnz(XrB),nnz(image));
   distribution(iterator) = size;
   iterator = iterator + 1;
   C = dilation2(C,B);
end

end

