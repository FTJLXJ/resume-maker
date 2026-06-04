% 心形曲线 - 参数方程法
% x = 16*sin(t)^3
% y = 13*cos(t) - 5*cos(2t) - 2*cos(3t) - cos(4t)

t = linspace(0, 2*pi, 1000);

x = 16 * sin(t).^3;
y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);

figure('Color', 'w');
fill(x, y, 'r', 'EdgeColor', 'r', 'LineWidth', 1.5);
axis equal;
axis off;
title('Heart Curve', 'FontSize', 14);
