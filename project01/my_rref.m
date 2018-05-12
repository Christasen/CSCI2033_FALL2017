function R = my_rref(A)
tol = 1e-1;
[m, n] = size(A);
k = 1;
l = 1;
while (k <= m) && (l <= n)
    % Find the maximum element in the pivot column
    % and from the pivot row to the last row
    [a,b] = max(abs(A(k:m,l)));
    b = b+k-1;
    
    if (a <= tol)
        A(k:m,l) = 0;
        l = l + 1;
    else
        % Swap the rows
        A([k,b],l:n) = A([b,k],l:n);
        % Divide the pivot row by the pivot element
        %Ai = A(k,l:n) / A(k,l);
        A(k,l:n) = A(k,l:n) / A(k,l);
        for i = [1:k-1 k+1:m]
            A(i,l:n) = A(i,l:n) - A(i,l)/A(k,l)*A(k,l:n);
        end
        k = k + 1;
        l = l + 1;
     end 
end
R = A;
end


