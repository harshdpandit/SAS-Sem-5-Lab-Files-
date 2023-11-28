%Harsh Pandit
%H036
clc;
close all;
clear all;
num=input('enter the numerator polynomial vector\n: ');%[1 -2 1]
den=input('enter the denominator polynomial vector\n: ');%[1 6 11 6]
H=tf(num,den);
[p z]=pzmap(H);
disp('Zeroes are: ');
disp(z);
disp('Poles are: ');
disp(p);
pzmap(H);
if max(real(p)>=0)
    disp('All poles do not lie i the left half of s-plane');
    disp('The given LTI system is not a stable system');
else
    disp('All poles do lie in the left half of s-plane');
    disp('The given LTI system is a stable system');
end  

