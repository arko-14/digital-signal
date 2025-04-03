clc;
close all;
clear all;
x1 = input('enetr the first sequence');
x2 = input('enter the second sequence');
N1 = length(x1);
N2 = length(x2);
N = max(N1,N2);
if(N2>N1)
    x4 = [x1,zeros(1,N-N1)];
    x5 = x2;
    elseif (N2==N1)
    x4 = x1;
    x5 = x2;
else
    x4=x1;
    x5=[x2,zeros(1,N-N2)];
end
x3 = zeros(1,N);
for m=0:N-1
    x3(m+1)=0;
    for n=0:N-1
    j = mod(m-n,N);
    x3(m+1)=x3(m+1)+x4(n+1).*x5(j+1);
    end
end
subplot(4,1,1);
stem(x1);
title('first input sequence');
xlabel('samples');
ylabel('amplitude');
subplot(4,1,2);
stem(x2);
title('second input sequence');
xlabel('samples');
ylabel('amplitude');
subplot(4,1,3);
stem(x3);
title('circular convolution using modulo operator');
xlabel('samples');
ylabel('amplitude');
y=cconv(x1,x2,N);
subplot(4,1,4);
stem(y);