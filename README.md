# vehicleApp
Curso de NextU - Programación IOS - Capitulo 2 - Autolayout
Las aplicaciones móviles, en la actualidad no se aprecian únicamente en una clase de dispositivos, pueden ser tanto en teléfonos celulares, tabletas, relojes, computadores, entre otros. Para evitar tener que desarrollar diferentes aplicaciones desde cero para cada uno de los dispositivos, Apple nos provee una forma de reutilizar y adaptar los elementos de la interfaz gráfica a diferentes tamaños de pantalla y diferentes orientaciones. En este ejercicio, podrás poner en práctica estos conceptos para desarrollar una aplicación que pueda verse tanto en iPhone como iPad y aprovechar los diferentes tamaños de pantalla para mostrar una interfaz diferente en cada dispositivo pero funcionar de igual forma.
OBJETIVO:
Crear una aplicación para iOS que muestre un listado de vehículos, lo cuales tengan asociado un detalle, en el que se incluye el nombre, una galería de imágenes y una descripción. Debes hacer uso únicamente de los conceptos desarrollados hasta ahora en todo el curso. Se te provee de un compendio de imágenes, tanto para los botones como para los detalles, llamado ImagenesVehiculos.zip y que debes incluir y presentar en tu solución.
RESULTADOS:

REQUERIMIENTOS:
1. La aplicación debe ejecutarse en cualquier simulador de dispositivo y en ambas orientaciones.
2. La aplicación debe tener una vista con botones que representa el master, de esta forma cada botón tendrá el logo de uno de los vehículos y tendrá 100 puntos de alto por 100 de ancho para iPhone y 140 puntos de alto y ancho en iPad.
3. Los botones del menú principal deberán mostrar únicamente el logo cuando se encuentra en dispositivos iPhone con orientación vertical y deberá mostrar el logo junto con el título del vehículo cuando se encuentra en dispositivos iPad con cualquier orientación y dispositivos iPhone con orientación horizontal. El título deberá tener un tamaño de 30 puntos para todos los dispositivos. La imagen del botón se deberá ver centrada en las pantallas y orientaciones en que esté sola, y recostada a la margen izquierda con el título justo después, al lado derecho, cuando esté junto al título.
4. La aplicación deberá tener una vista de detalle para cada uno de los vehículos y esta vista estar conectada con cada botón correspondiente.
5. La vista de detalle debe tener una sección superior con un título y una galería horizontal de imágenes, seguido de un texto de descripción. El texto debe ser desplazable (scrolling) para que permita toda su lectura incluso cuando las dimensiones de la pantalla sean menores al contenido.
   
6. La aplicación debe contener navegación para que desde el detalle, el usuario pueda volver al listado de vehículos.
7. En cada vista de detalle, tanto las imágenes como el título y la descripción deberán ser cargadas mediante código.
8. El texto de título en el detalle deberá tener un tamaño de 24 puntos para todos los dispositivos con ancho compacto (Compact Width) y deberá tener un tamaño de 30 puntos en los demás dispositivos y orientaciones.
9. El texto de descripción en el detalle deberá tener un tamaño de 20 puntos para los dispositivos con ancho compacto (Compact width) y 24 puntos para el resto de dispositivos.
10. Se debe hacer uso de Trait Variations para que el diseño se adapte a todos los dispositivos y orientaciones.
11. Para la galería de imágenes deberás implementar un Scroll horizontal y cargar las imágenes por código en este. Las vistas de imagen para este
scroll deberán cumplir con Autolayout y, por ende, deberás agregar sus respectivas constraints por código y conforme al diseño requerido.
12. La galería de imágenes debe tener un color de fondo negro, un alto para iPhone de 200 puntos en orientación vertical, un alto de 160 puntos en orientación horizontal y un alto para iPad de 250 puntos en todas las orientaciones. Cada imagen de la galería deberá ser cuadrada, es decir, deberá tener el mismo ancho y alto.
