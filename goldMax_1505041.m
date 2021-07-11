function [x,fx,ea,iter]=goldMax_1505041(f,xlow,xhigh,es,maxit)

r=(5^0.5-1)/2;
xl=xlow;
xu=xhigh;
iter=1;
d=r * (xu-xl);
x1=xl+d;
x2=xu-d;
f1=f(x1);
f2=f(x2);

if f1>f2
    x=x1;
    fx=f1;
else
    x=x2;
    fx=f2;
end

while(1)
    
    d=r*d;
    
    if f1>f2
        xl=x2;
        x2=x1;
        x1=xl+d ;
        f2=f1;
        f1=f(x1);
    else
        xu=x1;
        x1=x2;
        x2=xu-d;
        f1=f2;
        f2=f(x2);
    end
    
    iter=iter+1;
    
    if f1>f2
        x=x1;
        fx=f1;
    else
        x=x2;
        fx=f2;
    end
    
    if x~=0
        ea=(1-r) *abs((xu-xl)/x)* 100;
    end
    
    if ea<=es||iter>=maxit
        break;
    end
    
end