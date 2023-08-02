t = [0 100];
y0 = [5; 5];
mu = 1;

[t,y] = VanderPol(t, y0, mu);

%% van der pol forzado
% t = [0 100];
% y0 = [1; 0];
% mu = 0;
% A = 1.2;
% omega = 2 .* pi ./ 10;
% [t,y] = VanderPolForz(t, y0, mu, A, omega);

%% van der pol rigido
% t = [0 3000];
% y0 = [0.1; 0.1];
% mu = 1000;
% A = 1.2;
% omega = 2 .* pi ./ 10;
% 
% [t,y] = VanderPolRig(t, y0, mu, A, omega);
% plot(t,y(:,1))
% title('van der Pol Equation, \mu = 1000')
% axis([0 3000])
% xlabel('t')
% ylabel('solution y')
%%
t = [0 1000];
y0 = [5; 5];
mu = 0.3;
[t,y] = VanderPolLineal(t, y0, mu);



