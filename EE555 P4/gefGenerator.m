function [GEF] = gefGenerator(F,theta,sigma)
%Generate a 2D discrete GEF with width 4sigma + 1
theta = theta * pi / 180;
Gaussian = circleGaussian(sigma);
Exponential = zeros(4*sigma+1);
for m = 1:4*sigma+1
  for n = 1:4*sigma+1
  %Points need to be translated to the interval -2 sigma <= x <= 2 sigma
  k = m - 2*sigma - 1;
  l = n - 2 * sigma - 1;
  Exponential(m,n) =  exp(2*pi*j*F*(k*sin(theta) + l * sin(theta)));
  end
end
GEF = Gaussian .* Exponential;
end
