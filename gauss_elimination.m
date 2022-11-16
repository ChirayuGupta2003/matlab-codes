clc;
clear;
close all;

A = input("Enter coefficient matrix: ");
B = input("Enter source vector: ");
Aug = [A B];
N = length(B);
X = zeros(N,1);

for j=1:N-1
    for i=j+1:N
        m = Aug(i,j)/Aug(j,j);
        Aug(i,:) = Aug(i,:) - m*Aug(j,:);
    end
end

% Aug
% 
% X(N) = Aug(N, N+1)/Aug(N,N)
% 
% for i=N-1:-1:1
%     X(i) = (Aug(i,N+1) - Aug(i,i+1:N)*X(i+1:N))/Aug(i,i);
% end

X = A\B

X