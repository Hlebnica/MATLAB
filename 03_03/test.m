clear all;
syms x;
y = sin(x^2+1)-exp(x) + log(1+x^2);
c = -0.5;
for i=1:1:100
    sy(i) = subs(y, x, i * 0.02 + c);
    sx(i) = c + 0.02 * i;
end

figure(1)
plot(sx, sy)

%%



df = diff(y, x, 1); % производная
b = 10;

while abs(b) > 1.e-6 
    k = double(subs(df, x, c));
    b = double(subs(y, x, c))
    
    yL = k * (x - c) + b;
    
    for i = 1:1:100
        yLin(i) = double(subs(yL, x, sx(i)));
    end
    
    hold on
    plot(sx, yLin, "-k")
    hold off
    
    c = c - b/k;

end

