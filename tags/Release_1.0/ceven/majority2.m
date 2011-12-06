function MV = majority2(Predict,N,Nclass)

clear Niter i buff j mx mv MV n 

N = min([N length(Predict)]);

Nlower = floor(N/2)+1;
Nupper = ceil(N/2);

Niter = length(Predict);
a=1; b=Nlower;
for i = 1:Niter
    buff = Predict(a:b);
    if i >= Nupper, a=a+1; end
    b = min([Niter (b+1)]);
    for j = 1:Nclass
        vt(j) = length(find(buff==j));
    end
    [dum, MV(i)] = max(vt);
end