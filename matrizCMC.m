function m = matrizCMC(v,n)
cont = 1;
nCols = n;
ceros = zeros(nCols);
for i = 1:nCols
    for j = 1:nCols
    x(j,i) = v(cont);
    cont = cont+1;
    end
end
[ord inds] = sort(x);
inds = inds';
for i = 1:nCols
    tmp = inds(i,1:length(inds));
    index = find(tmp == i);
    ceros(i,index) = 1;
end
m = ceros;