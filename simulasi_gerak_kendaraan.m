v = 75;
j = 120;
T = j/v;
t = 0:T/200:T;
m = length(t);
S = 0;
for k = 1 : m-1
    v1(k) = v +(randn(1) * 10);
    S(k+1) = S(k)+(t(k+1)-t(k))*v1(k) ;
    figure (1)
    subplot(2,1,1)
    plot (t(1:k), S(1:k))
    grid on
    xlabel('waktu(jam)')
    ylabel ('posisi(km)')
    subplot(2,1,2)
    plot (t(1:k), v1(1:k))
    grid on
    xlabel('waktu(jam)')
    ylabel ('kecepatan(km/jam)')
    pause(0.1);
end
