function [t,y] = VanderPol(t, y0, mu, A, omega)
% Esta función calcula y grafica la ecuación de Van der pol
% [t,y] = VanderPol(y0, mu, A, omega):
% Donde:
% t = Lapso de tiempo
% y0 = Condiciones iniciales [y(0); y'(0)]
% mu = Escalar que indica la no linealidad y la fuerza del amortiguamiento
% A = Amplitud, o desplazamiento, de la funcion de onda
% omega = Velocidad angular
[t,y] = ode23(@vdp1, t, y0);
plot(t,y(:,1),'-o',t,y(:,2),'-o')
title('Ecuación de Van der Pol, \mu = 1 con ODE23');
xlabel('t');
ylabel('Solución y');
legend('y_1', 'y_2')
figure
plot(y(:,1), y(:,2))
xlabel('y_1');
ylabel('y_2');
title('Plano de fase')
function dydt = vdp1(t,y)
dydt = [y(2); mu*(1-y(1)^2)*y(2)-y(1)+A*sin(omega*t)];
end
end