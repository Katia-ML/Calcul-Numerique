tic();
n=100;
m=100;
p=25;
A=rand(n,n);
B=rand(n,n);
function [C]= matmat2b(A,B)
    C=zeros(n,n);
for i=1:1:m
    for j=1:1:n
        C(i,j) = A(i,:)*B(:,j) + C(i,j);
        end
    end
endfunction
toc();
