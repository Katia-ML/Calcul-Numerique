A=rand(100,100);
xex=rand(100,1);
size(xex);
b=A*xex;
x=A\b;
av=norm(xex-x)/norm(xex);
ar=norm(b-A*x)/norm(A)*norm(x);
