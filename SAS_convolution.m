%Name: Harsh Pandit
%Roll: H036
%Convolution of discrete signals

clc;
t=-10:0.01:10;
h=t;
x=exp(t);
y=conv(x,h);

subplot(2,2,1);
plot(t,h);
title('H(t)');
xlabel('Time');
ylabel('Amplitude');

subplot(2,2,2);
title('H(t)');
xlabel('Time');
ylabel('Amplitude');
plot(t,x);

subplot(2,2,3);
plot(y);
xlabel('Time');
ylabel('Amplitude');
title('Y(t)');






