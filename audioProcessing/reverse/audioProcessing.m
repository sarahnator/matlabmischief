[d,fs] = audioread('wizardneverlate.wav');

% play back
sound(d,fs)

% flip sound sample
d2 = flipud(d);
sound(d2,fs)

figure
hold on
x = 'Time';
y = 'Amplitude';
subplot(2,1,1);
plot(d);
title("A wizard is never late");
xlabel(x);
ylabel(y);
subplot(2,1,2);
plot(d2, 'r');
title("Etal revem si draziw a");
xlabel(x);
ylabel(y);
