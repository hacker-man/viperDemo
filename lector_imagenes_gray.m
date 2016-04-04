%Lee imagenes de la base de datos y las almacena en 
%un vector que posteriormente sera desenrrollado.
lee_archivos = dir('VIPeR/cam_a/*.bmp'); 
ruta ='VIPeR/cam_a/';
fila = 1;
for i = 1:length(lee_archivos) 
    archivo = lee_archivos(i).name; 
    matriz_img = imread(strcat(ruta,archivo));% lee la primera imagen
    matriz_img = im2double(matriz_img);  %Casteando imagen a double
    matriz_img = rgb2gray(matriz_img);
    %Desenrrollamos la imagen:
    temp = matriz_img';
    img_unroll = temp(:)';
    %Añadimos la nueva imagen a una matriz en la que cada fila
    %sera un vector con la imagen:
    for j = 1:length(img_unroll)
     imagenes_a(fila,j) = img_unroll(j);
    end
    fila = fila+1;
end
%Cada fila que contiene una imagen RGB desenrollada se traspone y pasa a ser una columna.
imagenes_a = imagenes_a'; 
clear fila img_unroll i ruta lee_archivos temp;
clear archivo comp_unroll t matriz_img t j;
%--------------------------------------------------------------------------
%Lee las imagenes de la camara B:
lee_archivos = dir('VIPeR/cam_b/*.bmp'); 
ruta ='VIPeR/cam_b/';
fila = 1;
for i = 1:length(lee_archivos) 
    archivo = lee_archivos(i).name; 
    matriz_img = imread(strcat(ruta,archivo));% lee la primera imagen
    matriz_img = im2double(matriz_img); %Casteando imagen a double
    matriz_img = rgb2gray(matriz_img);
    %Desenrrollamos la imagen:
    temp = matriz_img';
    img_unroll = temp(:)';
    %Añadimos la nueva imagen a una matriz en la que cada fila
    %será un vector con la imagen:
    for j = 1:length(img_unroll)
     imagenes_b(fila,j) = img_unroll(j);
    end
    fila = fila+1;
end
%Cada fila que contiene una imagen RGB desenrollada se traspone y pasa a ser una columna.
imagenes_b = imagenes_b'; 
clear fila img_unroll i ruta lee_archivos temp;
clear archivo comp_unroll t matriz_img t j;
%--------------------------------------------------------------------------
%Se concatenas las imagenes de cam_a y cam_b en un solo vector:
imagenes = [imagenes_a imagenes_b];
clear imagenes_a imagenes_b