clc;
close all;
clear;

A = input("Enter matrix: ");
B = input("Enter constants: ");
tol = 10^-input("Enter tolerance exponent (10^-__): ");
N = length(B);
x = zeros(N,1);

prev = inf;

while abs(prev - x) >= tol
    prev = x;
    for i=1:N
        x(i) = B(i)/A(i,i);
        for j=1:N
            if j~=i
                x(i) = x(i) - A(i,j)*x(j)/A(i,i);
            end
        end
    end
end

x