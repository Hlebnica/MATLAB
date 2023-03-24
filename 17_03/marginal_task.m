n = 10; % число узлов на отрезке
h = 0.1; % шаг сетки
u = x.^2; % начальное условие

u2 = zeros(size(u)); % вектор для хранения значений второй производной
u1 = zeros(size(u)); % вектор для хранения значений первой производной

for i = 2:n-1
    u2(i) = (u(i-1) - 2*u(i) + u(i+1))/h^2;
    u1(i) = (u(i+1) - u(i))/h;
end

u2
u1