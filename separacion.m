
%x -> Fotos
%y -> etiquetas

%Ahora se van a separar los datos, en datos de training,validacion test
%load('split_data');
%coches:
xTr = [imagenes(:,1:8) imagenes(:,33:40)];
%Datos viperDemo training: 25% cam_a, 25% cam_b:
%xTr = imagenes(:,split.train);
%Etiquetas viperDemo training: 25% cam_a, 25% cam_b:
%yTr = etiquetas(split.train);
%coches:
yTr = [etiquetas(1:8) etiquetas(33:40)];




%Datos de validacion: 25% cam_a, 25% cam_b:
%xVa = imagenes(:,split.valid);
%coches:
xVa = [imagenes(:,9:16) imagenes(:,41:48)];

%Etiquetas validacion: 25% cam_a, 25% cam_b:
%yVa = etiquetas(split.valid);
%coches:
yVa = [etiquetas(9:16) etiquetas(41:48)];



%Datos de test: 50% cam_a, 50% cam_b:
%xTe = imagenes(:,split.test);
xTe = [imagenes(:,17:32) imagenes(:,49:64)];


%Etiquetas de test: 50% cam_a, 50% cam_b:
%yTe = etiquetas(split.test);
%coches:
yTe = [etiquetas(17:32) etiquetas(49:64)];
