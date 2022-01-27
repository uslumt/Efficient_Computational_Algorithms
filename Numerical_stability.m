%The idea behind this example is the least squares fitting of the function
%exp(sin(4t)) on the interval [O, 1] by a polynomial of degree 14
%we are going to compare just the coefficients x(15) computed by our various algorithms
m = 100; n = 15;
t = (0 : m - 1)' / (m - 1);  %Set t to a discretization of [0, 1]
A = []; 
for i = 1 : n
A = [A t.^(i-1)];            %Construct Vandermonde matrix
end

b = exp(sin(4 * t));
b = b / 2006.787453080206;   %Normalization
format long
x=A\b;
fprintf('x(15)=\n')
%this figure was obtained with an extended precision arithmetic package
x(15)
[Q , R] = qr(A , 0);
x = R \ (Q' * b); 
fprintf('QR-Householder \n')
x(15)

[m , n] = size(A);
    V = A;
    R = zeros(n, n);
    for i = 1 : n
        R(i, i) = norm(V(:, i));
        V(:, i) = V(:, i) / R(i, i);
        if (i < n)
            for j = i + 1 : n
                R(i, j) = V(:, i)' * V(:, j);
                V(:, j) = V(:, j) - R(i, j) * V(:, i);
            end
        end
    end
Q = V;

x1 = R \ (Q' * b);
fprintf('QR-Gram-Schmidt \n')
x1(15)


x2 = (A' * A) \ (A' * b) 
fprintf('Cholesky factorization \n')
x2(15)


[U, S, V] = svd(A); 
x3 = V * (S \ (U' * b));
fprintf('Singular value decomposition \n')
x3(15)

[L, U, P] = lu(A);
y = L \ (P * b);
x4 = U \ y;
fprintf('LU with pivoting decomposition \n')
x4(15)
