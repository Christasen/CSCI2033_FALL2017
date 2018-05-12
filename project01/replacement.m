function B = replacement(A, i, j, s)
    [m,n] = size(A);
    if ( i <=m && 1<= i && j<=n && 1<=j)
        A(i,:)= A(i,:) + s*(A(j,:));
        B=A;
    else
        disp('Index Out of Range')
    end
end