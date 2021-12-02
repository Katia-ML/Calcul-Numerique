n=10;
A=rand(n,n);
function [L,U,P]=mylu(A)
    for i=1:n
        P(i)=i;
    end
    for k=1:n
        [pi,inpt]=max(abs(A(k:n,k)));
        inpt = k - 1 + inpt;
        ip=P(inpt); 
        P(inpt)=P(k);
        P(k)=ip;
        v=A(k,:); 
        A(k,:) = A(inpt,:);
        A(inpt,:)= v;
        for i=k+1:n
            A(i,k)= A(i,k)/A(k,k);
            for j = k+1:n
                A(i,j) = A(i,j)-A(i,k) * A(k,j);
            end
        end
    end
    U=triu(A);
    L=tril(A);
    for i=1:1:n
        L(i,i)=1
    end
    // conversion du vecteur pivot en matrice
    V=P;
    for i=1:n
        for j=1:n
            if j==V(i) then P(i,j)=1
            else P(i,j)=0
            end
        end
    end

endfunction
