function [L, U] = my_lu(A)
    [m,n] = size(A);
    L = eye(n);%%%this can the get I matrix
    U = A;
    
    for i = 1:  n-1
        if (abs( U(i,i)) < 1e-12) %this is important
            return 
        end
        for k =  i+1: n 
            p = U(k,i)/U(i,i); 
            [U,L] = replacement_lu(U,k,i,p,L);
        end
    end
    return
    

end