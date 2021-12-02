n=10;
A=triu(rand(n,n));
xex=rand(n,1);
b=A*xex;

[x]=gausskij3b(A,b)

// erreur avant
av=norm(xex-x)/norm(xex);
// erreur arriere
ar=norm(b-A*x)/norm(A)*norm(x);
