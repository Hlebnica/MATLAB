clear
a = 0;
b = 1;

for ix = 1:1000
    fa = myfunction(a);
    fb = myfunction(b);
    c = (a+b)/2;
    fc = myfunction(c);
    if fa * fc < 0 
        b = c;
    end
    if fb * fc < 0
        a = c;
    end
end
func1(c)
c