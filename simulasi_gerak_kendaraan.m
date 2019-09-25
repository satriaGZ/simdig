v = 75;
j = 120;
T = j/v;
t = 0:T/200:T;
m = 400;
S = 0;
for k = 1 : m-1
    S(k+1) = S(k)+(t(k+1)-t(k))*(v +(randn(1) * 10)) ;
    figure (1)
    plot (t(1:k), S(1:k))
    grid on
    xlabel('waktu(jam)')
    ylabel ('posisi(km)')
    pause(0.1);
end