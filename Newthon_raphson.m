syms x;
fx=input('f(x)=','s');
sf=str2sym(fx);
ezplot(sf);
tol=input('tolerancia del metodo = ');
x0=input('valor inicial = ');
v=symvar(sf);

sw=0;

while(sw==0)
    x1=x0-(subs(sf,v,x0)/subs(fx,v,x0));
    if abs(x0-x1)>tol
        x0=x1;
        sw=0;
    else
        sw=1;
    end
end

vpa(x1)
