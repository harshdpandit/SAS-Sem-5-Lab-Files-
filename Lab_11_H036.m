%H036
%Harsh Pandit 
%Lab 8 : Fourier Transform
clc;
close;
syms t s;
syms w real;
syms a real; 
syms o real;
syms b float;

%dirac delta function
%H036
f1=dirac(t);
F1=fourier(f1);
disp('the dirac delta function is =');
disp(f1);
disp('the fourier transform of dirac delta function is =');
disp(F1);
if1=ifourier(F1);
disp('the inverse fourier transform of dirac delta function is =');
disp(if1);
disp('=============================================================')

%Heaviside Unit function
%H036
f2=a*heaviside(t);
F2=fourier(f2);
disp('the Heaviside Unit function is =');
disp(f2);
disp('the fourier transform of Heaviside Unit function is =');
disp(F2);
if2=ifourier(F2);
disp('the inverse fourier transform of Heaviside Unit function is =');
disp(if2);
disp('=============================================================')

%Exponential function
%H036
f3=a*exp(-t)*heaviside(t);
F3=fourier(f3);
disp('the Exponential function is =');
disp(f3);
disp('the fourier transform of Exponential function is =');
disp(F3);
if3=ifourier(F3);
disp('the inverse fourier transform of Exponential function is =');
disp(if3);
w=-2*pi:pi/50:2*pi;
F1=subs(F3,w);
b=sqrt(1+w.^2);
Fmag=3*b.^(-1); 
%Fmag=abs(F1);
%Fphas=angle(F1);
Fphas=atan(w);
subplot(2,2,1);
plot(w,Fmag);
xlabel('W---------->')
ylabel('Magnitude-------->')
title('Magnitude Spectrum')
grid;

subplot(2,2,2);
plot(w,Fphas);
xlabel('W---------->')
ylabel('Magnitude-------->')
title('Phase Spectrum')
grid;


disp('=============================================================')

%Cos function
%H036
f4=a*cos(o*t);
F4=fourier(f4);
disp('the Cos function is =');
disp(f4);
disp('the fourier transform of Cos function is =');
disp(F4);
if4=ifourier(F4);
disp('the inverse fourier transform of Cos function is =');
disp(if4);
disp('=============================================================')

%Sine function
%H036
f5=a*sin(o*t);
F5=fourier(f5);
disp('the Sine function is =');
disp(f5);
disp('the fourier transform of Sine function is =');
disp(F5);
if5=ifourier(F5);
disp('the inverse fourier transform of Sine function is =');
disp(if5);
disp('=============================================================')






