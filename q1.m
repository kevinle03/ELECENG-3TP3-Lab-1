f = SimpleFunctions();
n = -10:10;

%Part A
x_a = f.unitstep(n) - 2.*f.unitstep(n-1) + f.unitstep(n-4);
%Part B
x_b = (n+2).*f.unitstep(n+2) - 2.*f.unitstep(n) - n.*f.unitstep(n-4);
%Part C
x_c = f.delta(n+1) - f.delta(n) + f.unitstep(n+1) - f.unitstep(n-2);
%Part D
x_d = exp(0.8.*n).*f.unitstep(n+1) + f.unitstep(n);

%Plot for function A
subplot(2,2,1);
stem(n,x_a,'LineWidth', 2);
axis([-10 10 -2 2]);
text(-8,1.8,'Function A, Kevin Le 400385350','FontSize',12);

%Plot for function B
subplot(2,2,2);
stem(n,x_b,'LineWidth',2);
axis([-10 10 -1 4]);
text(-8,3.8,'Function B, Kevin Le 400385350','FontSize',12);

%Plot for function C
subplot(2,2,3);
stem(n,x_c,'LineWidth',2);
axis([-10 10 -1 3]);
text(-8,2.8,'Function C, Kevin Le 400385350','FontSize',12);

%Plot for function D
subplot(2,2,4);
stem(n,x_d,'LineWidth',2);
text(-8,2900,'Function D, Kevin Le 400385350','FontSize',12);

exportgraphics(gcf,'q1_plots.jpg'); %creates a .jpg file with the 4 plots