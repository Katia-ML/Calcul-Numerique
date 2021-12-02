A=rand(10000,10000);
xex=rand(10000,1);
size(xex);
b=A*xex;
x=A\b;
av=norm(xex-x)/norm(xex);
ar=norm(b-A*x)/norm(A)*norm(x);
