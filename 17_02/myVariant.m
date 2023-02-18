function y=myVariant(x, nMax)

sum = 0.0;
for ix=0:1:nMax
    sum=sum+(cos(ix*x))/(ix^2+1);
end
y=sum;