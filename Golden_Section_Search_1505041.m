myfunc=@(x)...
    x-exp(x);

xl=-1;
xu=3;
maxit=100;
es=0.0005;

[x,fx,ea,iter]=goldMax_1505041(myfunc,xl,xu,es,maxit);

disp('x=')
disp(x)
disp('fx=')
disp(fx)
disp('ea=')
disp(ea)
disp('iter=')
disp(iter)
