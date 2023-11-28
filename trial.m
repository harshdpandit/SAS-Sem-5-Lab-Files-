clc;
x1=input('Enter the values of x1[n]: '); % [0 2 4 6]
x2=input('Enter the values of x2[n]: '); %[3 5 -2 -5]
if length(x1)~=length(x2)
 disp('Length of x1 must be equal to x2');
 return ;
end;
h=input('Enter the values of h[n] : '); %[-1 0 -3 -1 2 1]
X1=conv(x1,h);
X2=conv(x2,h);
y1=X1+X2;
x=x1+x2;
y2=conv(x,h);
L1=length(x1)+length(h)-2;
n1=0:L1;
L2=length(x2)+length(h)-2;
n2=0:L2;
stem(n1,y1);
xlabel('Time ------>');
ylabel('Amplitude ---------->');
title('Sum of Convolution of different input responses');
subplot(2,1,1);
stem(n1,y2);
xlabel('Time ------>');
ylabel('Amplitude ---------->');
title('Convolution of Sum of different input responses');
subplot(2,1,2);
if y1==y2
 disp('System is linear')
else
 disp('System is non-linear')
end;