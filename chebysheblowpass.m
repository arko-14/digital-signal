clc;
close all;
format long
rp=input('enter the passband ripple...');
rs=input('enter the stopband ripple...');
wp=input('enter the passband freq...');
ws=input('enter the stopband freq...');
fs=input('enter the sampling freq...');

w1=2*wp/fs; 
w2=2*ws/fs;
[n,wn]=cheb1ord(w1,w2,rp,rs, 's');
[b,a]=cheby1(n, rp, wn,'s');
w=0:.01:pi;
[h,om]=freqs(b,a,w);
m=20*log10 (abs (h));
an=angle(h);
subplot (2,1,1); plot(om/pi,m);
ylabel('Gain in dB'); xlabel('(a) Hormalised frequency');
subplot (2,1,2); plot(om/pi,an);
xlabel('(b) Normalised frequency');
ylabel ('Phase in radians');