function [U_new, L_new, P_new] = interchange_lup(U, i, j, L, P)
    %[m,n] = size(U)
    %[a,b] = size(P)
    %[j,k] = size(L)
    %interchange U
    temp1 = U(i,:); %this means the i row;
        U(i,:) = U(j,:);
        U(j,:) = temp1;
        U_new = U;
     %interchange P
     temp2 = P(i,:);
        P(i,:) = P(j,:);
        P(j,:) = temp2;
        P_new = P;
     %intercharge L
     if (i > 1)
        for k = 1: i-1
            temp3 = L(i,k); %the way to present L(i,k);
            L(i,k) = L(j,k);
            L(j,k) = temp3;
        end
     end
               
   L_new = L; 
   

end