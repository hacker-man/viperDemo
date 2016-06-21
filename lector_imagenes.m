%Lee imagenes de la base de datos y las almacena en 
%un vector que posteriormente sera desenrrollado.

%lee_archivos = dir('DATA/VIPeR/cam_a/*.bmp'); 
%ruta ='DATA/VIPeR/cam_a/';
lee_archivos = dir('DATA/coches/cam_a/*.JPG'); 
ruta ='DATA/coches/cam_a/';
fila = 1;
for i = 1:length(lee_archivos) 
    archivo = lee_archivos(i).name; 
    matriz_img = imread(strcat(ruta,archivo));% lee la primera imagen
    matriz_img = im2double(matriz_img);  %Casteando imagen a double
    %Desenrrollamos la imagen:
    for j = 1:3
        t = matriz_img(:,:,j)';
        comp_unroll(:,:,j) = t(:)';
    end
    %RGB desenrollado, se concatenan los pixeles de cada canal en un solo
    %vector
    img_unroll =  horzcat( comp_unroll(:,:,1), comp_unroll(:,:,2),comp_unroll(:,:,3));
    
    %Añadimos la nueva imagen a una matriz en la que cada fila
    %sera un vector con la imagen:
    for j = 1:length(img_unroll)
     imagenes_a(fila,j) = img_unroll(j);
    end
    fila = fila+1;
end
%Cada fila que contiene una imagen RGB desenrollada se traspone y pasa a ser una columna.
imagenes_a = imagenes_a'; 
clear fila img_unroll i ruta lee_archivos;
clear archivo comp_unroll t matriz_img t j;
%--------------------------------------------------------------------------
%Lee las imagenes de la camara B:
%lee_archivos = dir('DATA/VIPeR/cam_b/*.bmp'); 
%ruta ='DATA/VIPeR/cam_b/';
lee_archivos = dir('DATA/coches/cam_b/*.JPG'); 
ruta ='DATA/coches/cam_b/';
fila = 1;
for i = 1:length(lee_archivos) 
    archivo = lee_archivos(i).name; 
    matriz_img = imread(strcat(ruta,archivo));% lee la primera imagen
    matriz_img = im2double(matriz_img); %Casteando imagen a double
    %Desenrrollamos la imagen:
    for j = 1:3
        t = matriz_img(:,:,j)';
        comp_unroll(:,:,j) = t(:)';      
    end
    %RGB desenrollado, se concatenan los pixeles de cada canal en un solo
    %vector
    img_unroll =  horzcat( comp_unroll(:,:,1), comp_unroll(:,:,2),comp_unroll(:,:,3));
    
    %Añadimos la nueva imagen a una matriz en la que cada fila
    %será un vector con la imagen:
    for j = 1:length(img_unroll)
     imagenes_b(fila,j) = img_unroll(j);
    end
    fila = fila+1;
end
%Cada fila que contiene una imagen RGB desenrollada se traspone y pasa a ser una columna.
imagenes_b = imagenes_b'; 
clear fila img_unroll i ruta lee_archivos;
clear archivo comp_unroll t matriz_img t j;
%--------------------------------------------------------------------------
%Se concatenas las imagenes de cam_a y cam_b en un solo vector:
imagenes = [imagenes_a imagenes_b];
clear imagenes_a imagenes_b
