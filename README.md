# Analisis_monologos_Madrid

![club_de_la_Comedia](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/imagenes_presentacion/e62296bd-16e5-4073-bfda-f8f958002454_16-9-aspect-ratio_default_0.jpg)

## INTRODUCCIÓN

En Madrid existe un gran mercado de comedia, donde tenemos numerosos shows, open mics y concursos de comedia distribuidos por diferentes locales. 

Para la venta de entradas de estos eventos la plataforma principal es Atrápalo, donde el público que acude a estos espectáculos puntúa y opina sobre ellos. Esto es muy importante para los cómicos y las productoras de comedia, ya que estas puntuaciones y opiniones en esta web puede hacer que el show funcione o fracase.

![atrapalo](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/imagenes_presentacion/Ofertas-del-d%C3%ADa-propuesta-de-valor-de-Atr%C3%A1palo-destacada.png)


## OBJETIVOS

El objetivo de este proyecto va a ser comparar los precios y opiniones de Atrápalo con las valoraciones de google de los locales.

## DATOS

### web Scraping

- Se realizó un primer web scraping para todos los monólogos de madrid disponibles en Atrápalo. El proceso se puede ver completamente explicado en el archivo "\02_cuadernos\01_scraping\01_extraccion_datos_atrapalo.ipynb".

- Al ver que había un error en la extracción de los artistas se hizo un nuevo web scraping solo de los artistas. El proceso se puede ver completamente explicado en el archivo "\02_cuadernos\01_scraping\02_extraccion_artistas_atrapalo.ipynb".

- La información adicional se obtuvo de google, también mediante web scraping, donde sacamos los datos y puntuaciones de google de los diferentes locales donde se realizan los shows de comedia. El proceso se puede ver completamente explicado en el archivo "\02_cuadernos\01_scraping\03_extraccion_ubicaciones_google.ipynb".

### Limpieza de datos

- Se realizó la limpieza del CSV de los locales. El proceso se puede ver completamente explicado en el archivo "\02_cuadernos\02_limpieza_csvs\01_limpieza_locales.ipynb".

- Se realizó la limpieza del CSV de los shows. El proceso se puede ver completamente explicado en el archivo "\02_cuadernos\02_limpieza_csvs\02_limpieza_shows.ipynb".

- Se realizó una comparación de los datos de artistas que teniamos de los dos web scraping y lo unificamos. El proceso se puede ver completamente explicado en el archivo "\02_cuadernos\02_limpieza_csvs\03_Borrador_union_artistas.py".


## Diagrama BBDD SQL

![SQL](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/Tablas%20monologos.png)

## CONCLUSIONES

- Un claro ganador de las estadísticas de las cuentas de locales es el 'Teatro Chocita del Loro - Gran Vía' teniendo en cuenta también que la nota de atrápalo se acerca a la media (la media es 8.96 y tiene una nota de 8.8) y tiene un número de comentarios muchísimo más superior a la media (2378.5), al igual que en la valoración de google.

![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/graficas_conclusiones/estadisticas_locales/estadisticas_cuentas_locales_simplificadas.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/graficas_conclusiones/estadisticas_locales/cuentas_local_valores_maximos.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/graficas_conclusiones/estadisticas_locales/datos_chocita_del_loro.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/graficas_conclusiones/estadisticas_locales/comparacion_estadistiscas_completo.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/graficas_conclusiones/estadisticas_locales/grafica_valoraciones_chocita_atrapalo.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/graficas_conclusiones/estadisticas_locales/grafica_valoraciones_chocita_google.PNG)


- Por otro lado, los ‘open_mics’ son espacios donde diferentes cómicos prueban unos minutos de sus textos para ver si los chistes funcionan o no. Es decir, son un laboratorio de pruebas de chistes para los shows. De está manera, vemos que la relación entre 'show' y 'open_mic' es: 11.94, es decir, hay 11.94 shows por cada open_mic.

![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/graficas_conclusiones/porcentajes_open_mics.PNG)

- Así mismo, en tema de open_mics el claro ganador en cuanto a locales es el 'Teatro de las Aguas', que pese a tener el open con la entrada más cara, tiene la puntuación máxima por parte de los espectadores en Atrápalo y dos de sus open mics están en el ranking:

![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/estadisticas_open_mics/top_open_mics.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/estadisticas_open_mics/datos_estadisticas_opens_teatro_de_las_aguas.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/estadisticas_open_mics/grafica_estadisticas_teatro%20de%20las%20aguas.PNG)

- En tema de shows, nos salen que hay muchos que tienen la puntuación máxima, pero son shows que no tienen ni 20 comentarios.

![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/estadisticas_shows/estadisticas_shows.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/estadisticas_shows/top_shows.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/estadisticas_shows/shows_mayor%20nota.PNG)

- De esta manera, hemos hecho una gráfica comparativa entre la puntuación y en número de comentarios y los que mejor parados salen son ‘La Chocita del Loro’ de Carabanchel,  ‘El Club de la Comedia’ y el show de David Guapo.

![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/estadisticas_shows/estadisticas_notas_shows.PNG)
![estadisticas_cuentas_locales_simplificadas](https://github.com/Stefy-Castillo/ELT_project/blob/main/04_imagenes/imagenes_presentacion/david.png)
