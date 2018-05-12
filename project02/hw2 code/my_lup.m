function [L, U, P] = my_lup(A)
    [m,n] = size(A);
    L = eye(n);
    P = eye(n);
    U = A;
    
    for i = 1: n-1
       
        [a,j] = max(abs(U(i:n,i))); %%%this is row i to n;
        j = j+i-1; %%get the largest j;
       
        [U,L,P] = interchange_lup(U,i,j,L,P);
        
        if (abs( U(i,i)) < 1e-12)
            return
        end
        for k = i+1: n %syntax to present the for loop[
            p = U(k,i)/U(i,i);
            [U,L] = replacement_lu(U,k,i,p,L);
        end
    end
    return

end
    



 