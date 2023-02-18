function y = func()
for ix = 1:10
    fa = func(a);
    fb = func(b);
    c = (a+b)/2;
    fc = func(c);
    if fa * fc < 0 
        b = c;
    end
    if fb * fc < 0
        a = c;
    end
end
func(c)
