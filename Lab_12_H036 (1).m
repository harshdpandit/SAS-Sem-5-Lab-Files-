%Harsh Pandit
%H036
clc;
syms t s;
f=1.5-2.5*t*exp(-2*t)+1.25*exp(-3*t);
a=simplify(f);
disp('Given time domain function is : ');
pretty(a);
figure(1);
ezplot(f);
F=laplace(f,t,s);
disp('The obtained frquency domain function is =');
pretty(F);
figure(2);
ezplot(F);%we dont specify anything
figure(3);
f=ilaplace(F);
simplify(f);
disp('The synhtesis function is: ');
pretty(f);
figure(4);
ezplot(f);
