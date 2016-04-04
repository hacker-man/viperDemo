%Lee las etiquetas de las imagenes de la base de datos
%y las almacena en un vector de etiquetas

%Lee las etiquetas de la camara A:
lee_archivos = dir('DATA/VIPeR/cam_a/*.bmp'); 
for i = 1:length(lee_archivos) 
    etiquetas_a(i) =  str2num(lee_archivos(i).name(1:3));
end
clear i lee_archivos;
%--------------------------------------------------------------------------
%Lee las etiquetas de la camara B:
lee_archivos = dir('DATA/VIPeR/cam_b/*.bmp'); 
for i = 1:length(lee_archivos) 
    etiquetas_b(i) =  str2num(lee_archivos(i).name(1:3));
end
clear i lee_archivos;
%--------------------------------------------------------------------------
%Se guardan las etiquetas en un solo vector:
etiquetas = horzcat(etiquetas_a,etiquetas_b);
clear etiquetas_a etiquetas_b
