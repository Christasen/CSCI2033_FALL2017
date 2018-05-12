function [Q,R] = my_qr(A)
[~,n] = size(A);
q1 = A(:,1)/norm(A(:,1));
Q = q1;
for i = 2: n
    [~,a_perp] = ortho_decomp(Q, A(:,i));
    qi = a_perp/norm(a_perp);
    Q = [Q qi];
end

R = Q' * A;
end
