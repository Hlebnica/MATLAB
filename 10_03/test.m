clear all;

syms x;

sx = [0.5 1 1.5 2 2.5];
sy = log(sx)./(1 + sx);

figure(1)
plot(sx, sy, 's', 'MarkerSize', 16)
xL = sx(1):0.01:sx(5);
yL = log(xL)./(1 + xL);

%%
%hold on
%plot(xL, yL, '-b')
%hold off

%%
%yI = interp1(sx, sy, xL, 'cubic');
%hold on
%plot(xL, yI, '-r')
%hold off

%%
X = zeros(5,5);

for i = 0:4  
    X(:,i+1) = sx.^i;
end

A = double(inv(X) * sy');


y = A(1) + A(2) * x + A(3) * x^2 + A(4) * x^3 + A(5) * x^4;

for i = 1:length(xL)
    yP(i)=double(subs(y,x,xL(i)));
end

hold on
plot(xL, yP, '-g')
hold off



