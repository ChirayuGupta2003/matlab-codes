clc;
close all;
clear;

X = input("Enter x vector: ");
f = input("Enter f vector: ");
n = length(X);

p = 0;

syms x;

for i=1:n
    li = 1;
    for j=1:n
        if j~=i
            li = li*(x - X(j))/(X(i) - X(j));
        end
    end
    p = p + li*f(i);
end

p