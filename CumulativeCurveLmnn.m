clearvars -except xTe yTe Kknn Klmnn L
% xTe_cam_a = xTe(:,1:316);
% yTe_cam_a = yTe(1:316);
% xTe_cam_b = xTe(:,317:632);
% yTe_cam_b = yTe(317:632);

 xTe_cam_a = xTe(:,1:16);
 yTe_cam_a = yTe(1:16);
 xTe_cam_b = xTe(:,17:32);
 yTe_cam_b = yTe(17:32);

DM = lmnnDistances(L,xTe_cam_a,yTe_cam_a,xTe_cam_b,yTe_cam_b,Kknn,'train',0);
DM = DM';
distancia = matrix2vector(DM);
[rank c] = matrizCMC(distancia,16,yTe_cam_a);
x = cmcPercent(c);
%'b-s' RGB
%'r-o' PCA RGB
%'g-p' GRAY
%'k-d' PCA GRAY
%'m-x' Hist32Bin
plot(1:16,x*100,'m-x');
hold on
