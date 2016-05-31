clearvars -except xTe yTe

xTe_cam_a = xTe(:,1:316);
xTe_cam_b = xTe(:,317:632);

yTe_cam_a = yTe(1:316);
yTe_cam_b = yTe(317:632);

distancia = euclideanDist(xTe_cam_a,xTe_cam_b);
%Le paso yTe_cam_a como le puedo pasar yTe_cam_b, es indiferente
[rank c] = matrizCMC(distancia,316,yTe_cam_a);
x = cmcPercent(c);

plot(1:316,x*100);
