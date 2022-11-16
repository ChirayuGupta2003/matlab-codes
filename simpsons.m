clc;
close all;
clear;

syms x;

f = @(x)sin(x)^2;
a = input("Enter lower limit: ");
b = input("Enter upper limit: ");
N = input("Enter number of subintervals: ");

h = (b - a)/N;
sum = 0;

for i=1:N-1
    x = a + h*i;
    if rem(i,2)==0
        sum = sum+2*f(x);
    else
        sum = sum+4*f(x);
    end
end

sum = sum + f(a) + f(b);
answer = sum*h/2;
answer