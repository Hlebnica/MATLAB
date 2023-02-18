clear

a = 1;
b = 2;

precision = 1.0e-5;

c = (-myfunction(a) * b + myfunction(b) * a) / (-myfunction(a) + myfunction(b));

step_counter = 0;

while abs(myfunction(c)) > precision
    if myfunction(c) * myfunction(b) > 0
        b = c;
    else
        a  = c;
    end

    c =  (-myfunction(a) * b + myfunction(b) * a) / (-myfunction(a) + myfunction(b));
    step_counter = step_counter + 1;

end

myfunction(c)
c
step_counter
       