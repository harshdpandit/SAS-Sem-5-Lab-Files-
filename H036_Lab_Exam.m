clc;
close all;
clear all;
syms s ;

syms j;

t=0:0.1:20;

H=1/(s.^2+s*4+3);
disp('The given Impulse response is: ')
H
disp('The given step response is: ')
Y=1/(s*(s.^2+s*4+3));
Y

transfer_function=Y/H;
transfer=ilaplace(transfer_function);
disp('The transfer function is:')
transfer



imp=ilaplace(H);
pretty(imp);
imp=simplify(imp);
imp1=subs(imp,t)

step=ilaplace(Y);
pretty(step)
step=simplify(step);
step1=subs(step,t)


subplot(211);
plot(t,imp1);
xlabel('time');
ylabel('Amplitude');
title('Impulse Response')

subplot(212);
plot(t,step1);
xlabel('time');
ylabel('Amplitude');
title('Step Response')

