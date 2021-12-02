n=10;
A=rand(n,n);
xex=rand(n,1);
U=triu(A);
b=L*xex;
[x] = lsolve(L,b)

// erreur avant
av=norm(xex-x)/norm(xex);
// erreur arriere
ar=norm(b-U*x)/norm(U)*norm(x);
