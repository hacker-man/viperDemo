function [r,m]= matrizCMC(v,n,etiquetas)
cont = 1;
nCols = n;
ceros = zeros(nCols);
ranking = zeros(nCols);
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
    ranking(i,:) = etiquetas(tmp);
end
m = ceros;
r = ranking;