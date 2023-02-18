function y=MyExp(x, nMax)

sum = 0.0;
for ix=0:1:nMax
    sum=sum+x.^ix/factorial(ix);
end
y=sum;