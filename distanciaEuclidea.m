xTe_cam_a = xTe(:,1:316);
xTe_cam_b = xTe(:,317:632);

distancia = euclideanDist(xTe_cam_a,xTe_cam_b);
