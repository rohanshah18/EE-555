function ReturnImage = opening(Image,Struct)
Oops = erosion2(Image,Struct);
Oops = dilation2(Oops,Struct);
ReturnImage = Oops;
end

