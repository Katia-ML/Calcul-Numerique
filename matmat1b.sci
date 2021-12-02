tic();
n=200;
m=200;
p=100;
A=rand(m,p);
B=rand(p,n);
function [C]= matmat1b(A,B)
    C=zeros(n,n);
for i=1:1:m
    C(i,:) = A(i,:)*B + C(i,:);
        end
endfunction
toc();

