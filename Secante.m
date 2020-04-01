clear;
clc;
syms x;
fx=input('Ingresar una funcion: ');
f=inline(fx);
x0=input('limite inferior: ');
x1=input('limite superior: ');
tol=input('tolerencia: ');
error = 100;
n=0;
fprintf('n x0  x1 x2 error\n');
fprintf('%i %4.4f  %4.4f ------ ------f\n', n, x0, x1);
while (error>tol)
    x2 = x1 - ((x1-x0)*f(x1))/(f(x1)-f(x0));
     error = abs(f(x2));
    fprintf('%i %4.4f   %4.4f  %4.4f    %4.4f\n',n,x0,x1,x2,error);
    x0 = x1;
    x1 = x2;
    n = n+1;
end
    