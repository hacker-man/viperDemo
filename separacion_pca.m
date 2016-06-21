%disp('load split data');
%load('split_data');
disp('Reading images...');
%lector_imagenes_gray;
%lector_imagenes;
disp('Reading labels...');
lector_etiquetas;
%% perform PCA and split data into train/val/test
disp('Performing PCA (keeping 95% of variance)');
%xtv = imagenes(:,[split.train split.valid]);
train = [1:8 33:40];
valid = [9:16 41:48];
test = [17:32 49:64];
%xtv = imagenes(:,[split.train split.valid])
z = imagenes(:,[train valid]);
[u,v]=pca(z);
d95=find(cumsum(v)./sum(v)<0.95);
imagenes = bsxfun(@minus,imagenes,mean(z,2));
imagenes=u(d95,:)*imagenes;

xTr = imagenes(:,train);
yTr = etiquetas(train);
xVa = imagenes(:,valid);
yVa = etiquetas(valid);
xTe = imagenes(:,test);
yTe = etiquetas(test);

% xTr = imagenes(:,split.train);
% yTr = etiquetas(split.train);
% xVa = imagenes(:,split.valid);
% yVa = etiquetas(split.valid);
% xTe = imagenes(:,split.test);
% yTe = etiquetas(split.test);