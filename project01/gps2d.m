function p = gps2d(a, b, c, ra, rb, rc)
    i =my_rref([2*(a(1)-b(1)) 2*(a(2)-b(2)) rb^2-ra^2+a(1)^2+a(2)^2-b(1)^2-b(2)^2;2*(b(1)-c(1)) 2*(b(2)-c(2)) rc^2-rb^2+b(1)^2+b(2)^2-c(1)^2-c(2)^2]);
    j = size(i);%get the size
    p=i(:,j(2));
    disp(p);%find the result  
end