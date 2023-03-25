clear all;
h = 0.01;
sx = 0.0:h:1.0;
n = length(sx);

func = @(x) x.^2;

sY = zeros(1,n); 
ssY = zeros(1,n); 

err = Inf;
tol = 1e-6;
counter = 0;

figure(1)
while err > tol
    for i=1:1:n
        sY(i) = func(sx(i));
        integral = 0;
        for j = 1:1:i
            integral = integral + sin(sx(i)-sx(j)) * ssY(j);
        end
        sY(i) = sY(i) + 12*h*integral;
    end
    err = norm(sY - ssY)
    ssY = sY;
    hold on
    plot(sx,sY)
    hold off
    counter = counter + 1;
end

% Вывод результата

ssY
counter
