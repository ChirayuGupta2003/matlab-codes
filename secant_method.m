syms x;
f = x^2 - 17;

f = inline(f);

x0 = input("x0 = ");
x1 = input("x1 = ");
x2 = x1 - ((f(x1)*(x1 - x0))/(f(x1) - f(x0)));
tol = 10^-input("Enter tolerance exponent: ")

while (abs(x2 - x1) > tol)
    x0 = x1
    x1 = x2
    x2 = x1 - ((f(x1)*(x1 - x0))/(f(x1) - f(x0)))
end

x2