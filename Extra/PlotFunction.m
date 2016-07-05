function PlotFunction(x)
    t = [0.200, 0.200, 0.222, 0.222, 0.286, 0.286, 0.400, 0.400, 0.667, 0.667, 2.000, 2.000]';
    y = [0.1024, 0.0952, 0.1116, 0.1012, 0.1169, 0.1066, 0.1693, 0.1803, 0.2428, 0.2366, 0.4846, 0.4452]';
    h = @(t) x(1) .* t ./ (x(2) + t);
    range = (0:1000) * 2 / 1000;
    
    hold on
    plot(t, y, 'x');
    plot(range, h(range), '-');
    hold off
end
