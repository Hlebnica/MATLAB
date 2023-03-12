%x' = x - y + z
%y' = 2x - 3y - z
%z' = -x - y + z

clear all;


h = 0.01; 
sx = 0:h:2; 


x = zeros(size(sx)); 
y = zeros(size(sx)); 
z = zeros(size(sx)); 
x(1) = 1;
y(1) = 1; 
z(1) = 1; 


for i = 2:length(sx)
    x(i) = x(i-1) + h * (x(i-1) - y(i-1) + z(i-1));
    y(i) = y(i-1) + h * (2*x(i-1) - 3*y(i-1) - z(i-1));
    z(i) = z(i-1) + h * (-x(i-1) - y(i-1) + z(i-1));
end


plot(sx,x,sx,y,sx,z)
xlabel('sx')
ylabel('x, y, z')

