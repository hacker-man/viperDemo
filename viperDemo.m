% lector_imagenes_gray;
% lector_etiquetas;
% separacion;
%Busca los parametros:
%[Klmnn,Kknn,outdim,maxiter]=findLMNNparams(xTr,yTr,xVa,yVa)
%save parametros;
% train full muodel
Klmnn=1;
Kknn=3;
outdim=300;
maxiter=120;


fprintf('Training final model...\n')
[L,Details] = lmnnCG([xTr xVa], [yTr yVa],Klmnn,'maxiter',maxiter,'outdim',outdim)
save data_training;
%Separacion de los datos de test en cam_a y cam_b:
	xTe_cam_a = xTe(:,317:632);
	yTe_cam_a = yTe(317:632);
	xTe_cam_b = xTe(:,949:1264);
	yTe_cam_b = yTe(949:1264))
%--------------------------------------------------
testerr=knncl(L,xTe_cam_a,yTe_cam_a,xTe_cam_b,yTe_cam_b,Kknn,'train',0)
fprintf('\n\nTesting error: %2.2f%%\n',100.*testerr)
