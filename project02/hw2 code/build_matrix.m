function A = build_matrix()
     B = eye(8);

for i = 1: 8
    e1 = B(:,i);
    A(:,i) = get_forces(e1);
end