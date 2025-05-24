clc;
clear all;
close all;

x = input('Enter the 1st sequence: ');
h = input('Enter the 2nd sequence: ');

y = xcorr(x, h);  % Cross-correlation

figure;
subplot(3,1,1);
stem(x);
ylabel('Amplitude');
xlabel('(a)n');
title('First sequence (x)');

subplot(3,1,2);
stem(h);
ylabel('Amplitude');
xlabel('(b)n');
title('Second sequence (h)');

subplot(3,1,3);
stem(y);
ylabel('Amplitude');
xlabel('Lag');
title('Cross-correlation of x and h');

disp('The resultant signal is:');
disp(y);   % Display the result
