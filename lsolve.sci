function [x] = lsolve(L,b)
    x=zeros(m,1);
    x(1)=b(1)/L(1,1);
    for i=2:1:m
        x(i)=(b(i)-L(i,1:(i-1))*x(1:(i-1)))/L(i,i);
    end
endfunction

