syms x;
f = (cos(x) - x*exp(x));
df = diff(f);

g = inline(f);
dg = inline(df);

tol = 10^-input("Enter the tolerance exponent: ");

x_prev = input("Enter the initial approximation: ");
x_new = 0;

while (abs(x_prev - x_new) > tol)
    x_new = x_prev - (g(x_prev) / dg(x_prev));
    x_new
    x_prev = x_new;
end

x_new