clear all;
a = 0;
b = 3;
N = 1000;
h = (b-a) / N;
y = zeros(1,N); 

summ = 0;
for i = 1:N
    xi = a + h * i;
    summ = summ + func(xi);
    y(i) = summ*h; 
end

x = linspace(a,b,N);
plot(x, y)