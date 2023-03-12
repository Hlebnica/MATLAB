clear all;

k = 5;
b = 8;

sX = -2:0.1:2;
sY = k.*sX+b;


for i = 1:length(sX)
    rY(i) = sY(i) + 4.0*(0.5 - rand());
end

figure(1)
plot(sX, rY, 'o')
hold on
plot(sX, sY,'-k')
hold off

%%
zz = sX*sX'
zo = 0;
for i=1:length(sX)
    zo = zo + sX(i);
end
zo = zo * -1;

oz = zo;

oo = length(sX);

A = [zz zo; oz oo]

bz = 0;
for i=1:length(sX)
    bz = bz + sX(i)*rY(i);
end

bo = 0;
for i=1:length(sX)
    bo = bo + rY(i);
end

B = [bz; bo]

ANS = inv(A) * B

mY = ANS(1) .* sX + ANS(2);
hold on
plot(sX, mY, '-m')
hold off