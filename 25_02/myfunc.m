clear all;
x2 = 0:0.1:3;

a = 0;
b = 3;
N = 1000;
h = (b-a) / N;
y1 = zeros(1,N); 

summ = 0;
for i = 1:N
    xi = a + h * i;
    summ = summ + func(xi);
    y1(i) = summ*h; 
end

x1 = linspace(a,b,N);


for ix = 1:1:31
    y2(ix) = integral(@func, 0, x2(ix));
end

plot(x1, y1, x2, y2)


instance = integral(@func, 0, 3)
summ = summ * h


