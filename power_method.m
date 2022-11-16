clc;
close all;
clear;

A = input("Enter matrix: ");
x = ones(length(A),1);
x(1) = 1;
prev = zeros(length(A),1);
K = 0;
K_prev = inf;

while K_prev ~= K
   y = A*x;
   K_prev = K;
   K = max(abs(y));
   x = y/K;
   prev = x;
end

K,x