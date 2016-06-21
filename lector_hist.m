%cam a
%lee_archivos = dir('DATA/VIPeR/cam_a/*.bmp'); 
%ruta ='DATA/VIPeR/cam_a/';
lee_archivos = dir('DATA/coches/cam_a/*.JPG'); 
ruta ='DATA/coches/cam_a/';
cam_a = [];
for i = 1:length(lee_archivos)
    archivo = lee_archivos(i).name; 
    matriz_img = imread(strcat(ruta,archivo));
   % matriz_img = im2double(matriz_img);  
    hist_img = compute_histogram(matriz_img);
    cam_a = horzcat(cam_a,hist_img);
end
%cam b
%lee_archivos = dir('DATA/VIPeR/cam_b/*.bmp'); 
%ruta ='DATA/VIPeR/cam_b/';
lee_archivos = dir('DATA/coches/cam_b/*.JPG'); 
ruta ='DATA/coches/cam_b/';
cam_b = [];
for i = 1:length(lee_archivos)
    archivo = lee_archivos(i).name; 
    matriz_img = imread(strcat(ruta,archivo));
    %matriz_img = im2double(matriz_img);  
    hist_img = compute_histogram(matriz_img);
    cam_b = horzcat(cam_b,hist_img);
end

imagenes = [cam_a cam_b];
clear archivo hist_img i lee_archivos matriz_img ruta