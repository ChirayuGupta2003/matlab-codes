clc;
close all;
f = @(t,y)((y-t)/(y+t));
t0=input("Enter starting point: ");
b=input("Input last value: ");
h=input("Step size: ");
y0=input("Function value at t0: ");
n=(b-t0)/h;
for i=1:n
    y1=y0+h*f(t0,y0);
    t0=t0+h;
    y0=y1;
end
disp(y1);