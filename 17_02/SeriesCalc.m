x = 0:0.1:1;
y2= myVariant(x,20);
y4= myVariant(x,40);
y8= myVariant(x,80);


figure(1)
plot(x,y2,'-xr','LineWidth',1)
hold on
plot(x,y4,'-+y')
hold off
hold on
plot(x,y8,'-pb')
hold off

title('Сравнение частичных сумм ряда');
xlabel('Переменная x');
ylabel('Переменная y');
