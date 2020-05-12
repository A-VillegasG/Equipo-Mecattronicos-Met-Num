v=[5 -6 3 0;-1 0 1 12;1 -2 1 24]

[m,n]=size(v);
for j=1:m-1
    for z=2:m
        if v(j,j)==0
            t=v(j,:);v(j,:)=v(z,:);
            v(z,:)=t;
        end
    end
    for i=j+1:m
        v(i,:)=v(i,:)-v(j,:)*(v(i,j)/v(j,j));
    end
end
x=zeros(1,m);
for s=m:-1:1
    c=0;
    for k=2:m
        c=c+v(s,k)*x(k);
    end
    x(s)=(v(s,n)-c)/v(s,s);
end
disp('Eliminacion Gaussiana aplicado a Thévenin');
v
x'