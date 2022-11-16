g = @(x)(-2*sin(pi*x));

init = input("Enter initial approximation: ");
tol = input("Enter tolerence value x as in 10^-x: ");

tol = 10^-tol;

x_prev = init;
x_new = 0;

while abs(x_prev - x_new) >= tol
    x_new = g(x_prev);
    x_prev = x_new;
end

disp(x_new);

