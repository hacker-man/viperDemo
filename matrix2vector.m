function v = matrix2vector(m)
aux = [];
[nfilas ~] =  size(m);
for i = 1:nfilas
    aux = [aux m(i,:)];
end
v = aux;

