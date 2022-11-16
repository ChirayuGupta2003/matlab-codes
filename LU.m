clc;
close all;
clear;

A = input("Enter coefficient matrix: ");
B = input("Enter source vector: ");
N = length(A);
L = eye(N);
U = A;

for j=1:N-1
    for i=j+1:N
        m = A(i,j)/A(j,j);
        L(i,j) = m;
        A(i,:) = A(i,:) - m*A(j,:);
    end
end

y = L\B
x = y\A

