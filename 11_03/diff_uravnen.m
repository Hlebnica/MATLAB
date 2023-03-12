clear all;

h = 0.1; 
sx = 0:h:3; 

y = zeros(size(sx)); 
y(1) = 1; 

for i = 2:length(sx)
    y(i) = y(i-1) + h*(sin(y(i-1)) + sx(i-1));
end

figure(1)
plot(sx,y)

%% Проверка встроенным методом 
% Задаем интервал времени и начальное условие
tspan = [0 3]; % интервал времени
y0 = 1; % начальное условие

% Определяем анонимную функцию, которая представляет правую часть дифференциального уравнения
f = @(t,y) sin(y) + t;

% Решаем дифференциальное уравнение методом Рунге-Кутты 4-го порядка
[t,y] = ode45(f, tspan, y0);

% Выводим график решения
figure(2)
plot(t,y)
xlabel('t')
ylabel('y')

