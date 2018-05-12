function[M,t] = affine_fit(P,P_tilde)
A = [];
b = [];
[~,n] = size(P);
for i = 1: n
    A = [A; design_matrix(P(:,i))];
    b = [b; P_tilde(:,i)];
    
end
x = least_squares(A,b);
[M,t] = my_unpack(x);


end