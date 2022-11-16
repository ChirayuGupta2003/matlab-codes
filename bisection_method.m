syms f(x);
f(x) = x^2 - 29;

a = 5;
b = 6;

tol = 10^-10;

while abs(a - b) > tol
    c = (a + b)/2;
    if (f(a)*f(c) < 0)
        b = c;
    else
        a = c;
    end
end

fprintf("%f\n", c);
