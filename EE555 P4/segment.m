function [ img_seg ] = segment( GEF, image )
f = image;
g = GEF;
img_s=zeros(size(f,1),size(f,2));
for x=1:size(g,1)
    for y=1:size(g,2)
        if g(x,y)>=0.04
            img_s(x+2*sigma,y+2*sigma)=1;
        end
    end
end

img_seg=double(f)*img_s;

end

