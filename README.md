# Descripcion de proyecto

Repositorio con ghost pruebas de regresion.


## Descripcion de Carpetas

  1. Backstop: carpeta con el script de backstop para pruebas de regresion.
  2. PruebasGhostE2Ev0: carpeta que contiene las pruebas para la verision 3.3.0 de Ghost con Cypress
  3. PruebasGhostE2Ev1: carpeta que contiene las pruebas para la verision 3.42.5 de Ghost con Cypress
  4. PruebasKrakenAndes3.3.0: carpeta que contiene las pruebas para la verision 3.3.0 de Ghost con Kraken
  5. PruebasKrakenAndes3.42.5: carpeta que contiene las pruebas para la verision 3.42.5 de Ghost con Kraken
  6. result:Contiene las imagenes resultantes de la comparacion con Resemblejs
  
## Descripcion archivos.

  1. index.js : contiene la logica de Resemblesjs
  2. report.html: contiene el reporte generado en html por Resemblesjs
  3. script.py: contiene el script en python para la ejecucion de las pruebas de Backstop
  4. backstop.json: contiene los indicaciones de los reportes html que se van a comparar , alli se indican configuraciones iniciales para que las pruebas corran.
  5. Report1.html: Reporte html encargado de albergar las rutas de los pantallazos tomados con ayuda de cypress , este archivo corresponde a la version 3.3.0 del ghost.
  6. Report2.html: Reporte html encargado de albergar las rutas de los pantallazos tomados con ayuda de cypress , este archivo corresponde a la version 3.42.5 del ghost.
  7. script.py: archivo de automatización escrito en python con el fin de levantar los servidores de los reportes y ejecutar las pruebas en backstop.


## Prerequisitos:
  1. Contar con ghost 3.3.0 Instalado y en ejecucion.
  2. Contar con ghost 3.42.5 Instalado y en ejecucion. (ver documentacion de ghost: https://ghost.org/docs/ )
  3. Ejecute npm install en la carpeta origen de este proyecto para instalar las librerias necesarias para ResembleJs
  4. Tener Python instalado para ejecutar el script de Backstop.
  5. Tener Node instalado para ejecutar el script de ResembeleJs
  6. Tener Backstop instalado: npm install -g backstopjs
  7. Cumplir con los prerequisitos para la ejecucion de las pruebas planteados en cada una de las carpetas de pruebas.
  
## Pasos previos para el analisis de regresión visual:

1. Realice la ejecucion de los escenarios de pruebas en las 4 carpetas, esto genera las imagenes para la comparacion. (la ejecucion de estas pruebas se describe en el Readme dentro de cada carpeta) (se dejaron imagenes de prueba en kraken por si no desea ejecutarlas)

## Ejecucion de Backstop
    La ejecución de Backstop como se explico anteriormente fue automatizada por medio de un script en el lenguaje Python, este script se encarga de correr los test una vez los pantallazos han sido tomados , posteriormente se inicia el servidor respectivo de los reportes html y se le indica a la herramienta de correr el comando "Backstop test", encargado de ejecturar las pruebas de regresión visual a las url de los reportes indicados en el archivo backstop.json. (Ver carpeta Backstop(Backstop/backstop.json))

      py scrypt.py
      
### Revision del reporte.
    Al ejecutar el script anterior, en su navegador se desplegaran las dos paginas de las dos versiones del software probado , y una tercera correrpondiente al analisis de regresión visual ejecutado por la herramienta.

## Ejecucion de ResembleJs

      node index.js

### Revision del reporte

    despliegue en su navegador el archivo report.html de la raiz de este proyecto




