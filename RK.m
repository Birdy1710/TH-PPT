function [x, y] = RK(fxy, x0, xn, y0, N)

    x = linspace(x0, xn, N+1);
    y = zeros(size(x));
    y(1) = y0;
    
    h = (xn - x0) / N;

   
    for i = 1:N
        k1 = h * fxy(x(i), y(i));
        k2 = h * fxy(x(i) + h/2, y(i) + k1/2);
        k3 = h * fxy(x(i) + h/2, y(i) + k2/2);
        k4 = h * fxy(x(i) + h, y(i) + k3);

       
        y(i+1) = y(i) + (k1 + 2*k2 + 2*k3 + k4) / 6;
    end
end
