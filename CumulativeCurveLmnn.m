clearvars -except xTe yTe Kknn Klmnn L
xTe_cam_a = xTe(:,1:316);
yTe_cam_a = yTe(1:316);
xTe_cam_b = xTe(:,317:632);
yTe_cam_b = yTe(317:632);

DM = lmnnDistances(L,xTe_cam_a,yTe_cam_a,xTe_cam_b,yTe_cam_b,Kknn,'train',0);
DM = DM';
distancia = matrix2vector(DM);
[rank c] = matrizCMC(distancia,316,yTe_cam_a);
x = cmcPercent(c);
plot(1:316,x*100);
