function beta = my_pack(M,t)
beta = [];
beta(1) = M(1,1);
beta(2) = M(1,2);
beta(3) = M(2,1);
beta(4) = M(2,2);
beta(5) = t(1);
beta(6) = t(2);
end