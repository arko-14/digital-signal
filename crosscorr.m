clc;
clear all;
close all;
X=input('enter the 1st sequence');
h=input('enter the 2nd sequence');
y=Xcorr(x,h);
figure;
subplot(3,1,1);
stem(x);
ylabel('Amplitude');
xlabel('(a)n');
subplot(3,1,2);
stem(h);
ylabel('Amplitude');
xlabel('(b)n');
disp('The resultant signal is');flep(y)
