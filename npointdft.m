close all;
clc;
xn = input('Enter the sequence x(n):');
xn = xn';
N = length(xn);
Xk = zeros(N,1);
n = 0:N-1;
for k = 0:N-1
    Xk(k+1)=exp(-1i*2*pi*k*n/N)*xn;
end
disp('DSP Sequence:X(k):');
disp(Xk);
title('N-point DFT')

n = 0:N-1;

%input sequence
subplot(2,2,1:2);
stem(n,xn);
grid on;
title('Input sequence x(n)');
xlabel('n');
ylabel('x(n)');

%output magnitude plot
subplot(2,2,3);
stem(n,abs(Xk));
grid on;
title('Magnitude plot of DFT:(X(k))');
xlabel('n');
ylabel('X(k)');

%Output Phase plot
subplot(2,2,4);
stem(n,angle(Xk)');
grid on;
title('Phase plot of DFT:angle(X(k))');
xlabel('n');
ylabel('Angle');
