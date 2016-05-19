function v = euclideanDist(v1,v2)
[rows cols] = size(v1);
aux = 0;
cont = 1;
for k = 1:cols
    for col =  1:cols
        for row = 1:rows
        aux = aux+(v2(row,k)-v1(row,col))^2;
        end
    vaux(cont) = sqrt(aux);
    cont = cont+1;
    aux = 0;
    end
end
v = vaux;
