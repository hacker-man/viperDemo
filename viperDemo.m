% lector_imagenes_gray;
% lector_etiquetas;
% separacion;
%Busca los parametros:

%[Klmnn,Kknn,outdim,maxiter]=findLMNNparams(xTr,yTr,xVa,yVa)
%save parametros;
% train full muodel
 Klmnn=1;
 Kknn=1;
%  outdim=10;
%  maxiter=2;
% 
% 
% fprintf('Training final model...\n')
 [L,Details] = lmnnCG([xTr xVa], [yTr yVa],Klmnn,'maxiter',maxiter,'outdim',outdim)
% 
%Separacion de los datos de test en cam_a y cam_b:
% 	xTe_cam_a = xTe(:,1:316);
% 	yTe_cam_a = yTe(1:316);
% 	xTe_cam_b = xTe(:,317:632);
% 	yTe_cam_b = yTe(317:632);
% %--------------------------------------------------
%   testerr=knncl(L,xTe_cam_a,yTe_cam_a,xTe_cam_b,yTe_cam_b,Kknn,'train',0)
% fprintf('\n\nTesting error: %2.2f%%\n',100.*testerr)
% matlab.io.saveVariablesToScript('viper_experiment_data.m')
% save viper_exp_data;
