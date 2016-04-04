
%x -> Fotos
%y -> etiquetas

%Ahora se van a separar los datos, en datos de training,validacion test
load('split_data');

%deprecated:
% cam_a = imagenes(:,1:158);
% cam_b = imagenes(:,633:790);
% xTr = [cam_a cam_b];

%Datos training: 25% cam_a, 25% cam_b:
xTr = imagenes(:,split.train);
%deprecated:
% e_cam_a = etiquetas(1:158);
% e_cam_b = etiquetas (633:790);
% yTr = [e_cam_a e_cam_b];
%Etiquetas training: 25% cam_a, 25% cam_b:
yTr = etiquetas(split.train);


%deprecated:
% cam_a = imagenes(:,159:316);
% cam_b = imagenes(:,791:948);
% xVa = [cam_a cam_b];

%Datos de validacion: 25% cam_a, 25% cam_b:
xVa = imagenes(:,split.valid);

%deprecated:
% e_cam_a = etiquetas(159:316);
% e_cam_b = etiquetas (791:948);
% yVa = [e_cam_a e_cam_b];
%Etiquetas validacion: 25% cam_a, 25% cam_b:
yVa = etiquetas(split.valid);

%deprecated:
% cam_a = imagenes(:,317:632);
% cam_b = imagenes(:,949:1264);
% xTe = [cam_a cam_b];

%Datos de test: 50% cam_a, 50% cam_b:
xTe = imagenes(:,split.test);
%deprecated:
% e_cam_a = etiquetas(317:632);
% e_cam_b = etiquetas(949:1264);
% yTe = [e_cam_a e_cam_b];

%Etiquetas de test: 50% cam_a, 50% cam_b:
yTe = etiquetas(split.test);
