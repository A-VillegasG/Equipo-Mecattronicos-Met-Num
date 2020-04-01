clear;
clc;
syms x;
fx=input('Ingresar una funcion: ');
f=inline(fx);
a=input('limite inferior: ');
b=input('limite superior: ');
tol=input('tolerencia: ');
c=0;
n=0;
MEP=(b-a)/2;
fprintf('\t n \t \ta \t c \t\t b \t\t MEP \n');

while(MEP>tol)
    c=(a+b)/2;
    disp([n, a, c, b, MEP]);
    if(f(a)*f(c)<0)
        b=c;
    else
        a=c;
    end
    MEP=(b-a)/2;
    n=n+1;
end

fprintf('raiz %f: \n\t %f \n', tol, c);