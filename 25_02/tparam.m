clear all;

for it=1:100
    t=it*2*pi/100;
    A = [2 sin(t)
        cos(t) 1];
    B = [cos(t)
        1 - sin(t)];
    X = inv(A)*B;
    x1(it)=X(1);
    x2(it)=X(2);
end

plot(x1,x2)


