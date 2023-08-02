clc
clear all
% %%
% %PARTE NO FORZADA
% A=[0 1; -1 2]; %el 2 vendria a ser el mu
% B=[1;  1];
% C=[1 0];
% D=[0];
% 
% [num,den]= ss2tf(A,B,C,D,1);
% T= tf(num,den)
% 
% clear all
% %%
% A=[0 1 ; -1 2];
% B=[0;1]; 
% C=[1 0];
% D=[0];
% [num,den]= ss2tf(A,B,C,D,1);
% T= tf(num,den)
num=2;
den=[1 -2 1];
[A,B,C,D]=tf2ss(num,den);
A
B
C
D