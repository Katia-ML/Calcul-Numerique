A=rand(3,3);
xex=rand(3,1);
size(xex);
b=A*xex;
x=A\b;
av=norm(xex-x)/norm(xex);
ar=norm(b-A*x)/norm(A)*norm(x);
