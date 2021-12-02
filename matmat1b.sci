tic();
n=200;
m=200;
p=50;
A=rand(n,n);
B=rand(n,n);
function [C]= matmat1b(A,B)
    C=zeros(n,n);
for i=1:1:m
    C(i,:) = A(i,:)*B + C(i,:);
        end
endfunction
toc();
