function [x, y] = hienantrungdiem(fxy, x0, xn, y0, N)
  
    x = linspace(x0, xn, N+1);
    y = zeros(size(x));
    y(1) = y0; 
   
    h = (xn - x0) / N;

    
    for i = 1:N
        xtd = x(i) + h/2;
        ytd = y(i) + h/2 * fxy(x(i), y(i));
        y(i+1) = y(i) + h * fxy(xtd, ytd);
    end
end
