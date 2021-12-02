n=8;
A=rand(n,n);
x=rand(n,1);
b=A*x;

function[L,U]=mylu3b(A) 
   
    for k=1:n-1
        for i=k+1:n
            A(i,k)=A(i,k)/A(k,k);
        end
        for i=k+1:n
            for j=k+1:n
                A(i,j)=A(i,j)-A(i,k)*A(k,j);
            end
        end
    end
    U=triu(A);
    L=tril(A);
    for i=1:1:n
        L(i,i)=1
    end
endfunction
