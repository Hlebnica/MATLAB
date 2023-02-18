clear
a = 0;
b = 1;


while abs(epsilon) > 0.000001
    epsilon = c;
    fa = myfunction(a);
    fb = myfunction(b);
    c = (a+b)/2;
    fc = myfunction(c);
    epsilon = epsilon - c;
    if fa * fc < 0 
        b = c;
    end
    if fb * fc < 0
        a = c;
    end
end
func1(c)
c