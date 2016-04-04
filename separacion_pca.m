disp('load split data');
load('split_data');
disp('Reading images...');
lector_imagenes_gray;
disp('Reading labels...');
lector_etiquetas;
%% perform PCA and split data into train/val/test
disp('Performing PCA (keeping 95% of variance)');
xtv = imagenes(:,[split.train split.valid]);
[u,v]=pca(xtv);
d95=find(cumsum(v)./sum(v)<0.95);
imagenes = bsxfun(@minus,imagenes,mean(xtv,2));
imagenes=u(d95,:)*imagenes;


xTr = imagenes(:,split.train);
yTr = etiquetas(split.train);
xVa = imagenes(:,split.valid);
yVa = etiquetas(split.valid);
xTe = imagenes(:,split.test);
yTe = etiquetas(split.test);