clc;
close all;
clear;

A = input("Enter matrix: ");
B = input("Enter constants: ");
tol = 10^-input("Enter tolerance exponent (10^-__): ");
w = input("Enter omega: ");
N = length(B);
x = zeros(N,1);

prev = inf;

while abs(x - prev) >= tol
    prev = x;
    for i=1:N
        x(i) = (1-w)*x(i) + w*B(i)/A(i,i);
        for j=1:N
            if j~=i
                x(i) = x(i) - (w/A(i,i))*(A(i,j)*x(j));
            end
        end
    end
end

x