function [ReturnImage] = foreground (Struct)

M = int16(size(Struct));

for x = 1:M(1)
  for y = 1:M(2)
    if(Struct(x,y) == 2)
        Struct(x,y) = 0;
    else
        Struct(x,y) = Struct(x,y);
    end
  end
end

ReturnImage = Struct;
end