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
testerr=knncl(L,xTe,yTe,xTe,yTe,Kknn,'train',0)
fprintf('\n\nTesting error: %2.2f%%\n',100.*testerr)
