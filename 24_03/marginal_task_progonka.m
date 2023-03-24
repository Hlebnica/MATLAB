clear all;
h = 0.01;
sx = 0.0:h:1.0;
n = length(sx);

func = @(x) (x.^3 - x)/6;

alpha(n-1) = 0.5;

betta(n-1) = -h.^2 * sx(n);

% (x^3 - x)/6

% bvp4c
% bvpinit

for i=1:1:n-1
  j = n-i-1;
  if j > 0
    alpha(j) = double(1./(2-alpha(j+1)));
    betta(j) = -double((h.^2 *sx(j) - betta(j+1))/(2-alpha(j+1)));
  end
end

y(1) = 0;

for i=2:1:n-1
  y(i) = y(i-1) * alpha(i) + betta(i);
end
y(n)=0.0;
for j=1:101
  fy(j)=(sx(j)^3-sx(j))/6.0;
end

figure(1);
plot(sx, y,'-k','LineWidth',3)
hold on
plot(sx,fy,'-r')
hold off