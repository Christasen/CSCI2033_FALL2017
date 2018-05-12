function x = least_squares(A,b)
[Q, R] = my_qr(A);
x = back_sub(R, Q'*b);
end