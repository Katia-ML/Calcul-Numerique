tic();
n=10;
m=10;
p=5;
A=rand(m,p);
B=rand(p,n);
function [C]= matmat3b(A,B)
    C=zeros(n,n);
for i=1:1:m
    for j=1:1:n
        for k=1:1:p
            C(i,j)=C(i,j)+A(i,k)*B(k,j);
        end
    end
end
endfunction
toc();
