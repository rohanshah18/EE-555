function [intersect] = intersection (A, B)

N = size(A);

C = zeros(N);

for x = 1:N(1)
    for y = 1:N(2)
        if(A(x,y) == 1 && B(x,y)) == 1
            C(x,y) = A(x,y);
        end
    end
end
intersect = C;
end
