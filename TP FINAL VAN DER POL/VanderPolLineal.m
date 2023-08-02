function [t,y] = VanderPolLineal(t, y0, mu)
% Esta función calcula y grafica la ecuación de Van der pol
% [t,y] = VanderPol(y0, mu):
% Donde:
% t = Lapso de tiempo
% y0 = Condiciones iniciales [x(0); x'(0)]
% mu = Escalar que indica la no linealidad y la fuerza del amortiguamiento
[t,y] = ode23(@vdp1, t, y0);
plot(t,y(:,1),t,y(:,2))
title('Ecuación de Van der Pol, \mu = 1 con ODE23');
xlabel('t');
ylabel('Solución y');
legend('y_1', 'y_2');
figure
plot(y(:,1), y(:,2))
xlabel('y_1');
ylabel('y_2');
title('Plano de fase')
function dydt = vdp1(t,y)
dydt = [mu*y(1)-y(2); y(1)];
end
end