n=10;
A=rand(n,n);
x=rand(n,1);
b=A*x;

function[L,U]=mylu1b(A)
    for k=1:n-1
        A(k+1:n,k)=A(k+1:n,k)/A(k,k);
        A(k+1:n,k+1:n)=A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);
    end

    U=triu(A);
    L=tril(A);
    for i=1:1:n
        L(i,i)=1
    end

endfunction
