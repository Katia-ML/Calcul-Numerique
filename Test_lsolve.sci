m=10;
B=rand(m,m);
xex=rand(m,1);
L=tril(B);
b=L*xex;
[x] = lsolve(L,b)

// erreur avant
av=norm(x-xex)/norm(xex);
// erreur arriere
ar=norm(b-L*x)/norm(L)*norm(x);
