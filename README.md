# viperDemo

Se pretende realizar la identifación de personas mediante un algorirmo de DML. Se aplicara sobre un dataset denominado ViperDataSet que consta de 2 carpetas: cam_a y cam_b con 632 pares imágenes de peatones, con lo cual existen 2 imágenes de cada individuo desde diferente punto de vista. Todas las fotos están escaladas a 128x48 px. El nombre que recibe la imagen nos da información acerca de la misma. Este nombre se compone de 3 dígitos guion bajo y 2 dígitos. Los primeros 3 dígitos (x) se corresponden con el identificador del sujeto y los 2 últimos (y) con la perspectiva en grados: xxx_yy.Por lo que la imagen 001_00 que se encuentra por ejemplo en la carpeta cam_a, tiene correspondencia con el mismo individuo pero con otro ángulo 001_45 de la carpeta cam_b.

* Scripts para pre-procesamiento de los datos:
  - **lector_imagenes.m:** Lee y desenrrolla las imagenes RGB almacenandoles por columnas de manera contigua.
  - **lector_imagenes_grey.m:** Hace lo mismo que el script anterior pero en escala de grises, es decir con solo un canal.
  - **lector_etiquetas.m:** Lee y almacena las etiquetas de las imagenes en un array.
  - **struct_split.m:** Es una estructura que almacena los índices de los datos que serán usados para *training*,*validación* y *test*.
  - **separacion.m:** Divide los datos y etiquetas asociadas a los mismos en *train*,*valid* y *test*.
  - **separacion_pca.m:** Hace exactamente lo mismo que el script anterior pero previamente se reduce la dimensionalidad de los datos aplicandoles un *pca*.
  - **viperDemo.m:** Busca los parámetros adecuados 

### Version
1.0.0