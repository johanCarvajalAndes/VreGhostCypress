# Introducción:
Este proyecto de carácter educativo aplica pruebas E2E sobre un aplicativo web, las cuales validaron los escenarios tanto en Kraken, como en Cypress:
1. El proyecto y analisis de Cypress se encuentra en el repositorio: https://github.com/johanCarvajalAndes/PruebasGhostE2E/blob/main/README.md
2. El analisis en Kraken se encuentra en este repositorio.

# pruebasKrakenAndes
son las pruebas realizadas con kraken a Ghost

## Pre Requisitos: 
1. tener instalado Kraken : https://thesoftwaredesignlab.github.io/KrakenMobile/
2. tener instalado Ghost: https://ghost.org/docs/install/
3. Crear un usuario administrador en Ghost

## Configuración inicial:
Remplaze en el archivo properties.json los campos necesarios y el puerto en las rutas, segun su servicio de Ghost, OJO: EN TODOS LOS USUARIOS.
        
 ### Ejemplo:

        "USER1": "js.segura@uniandes.edu.co",
        "PASSWORD1": "M3iqQFS!e_PGFyD",
        "URI":"http://192.168.1.250:2368/ghost/#/signin"
        ......
        
        En USER4 se solicita un "GHOSTUSER", este corresponde al usuario de ghost asignado al momento de crear el usuario de login.

## Ejecutar
En la carpeta raíz de este proyecto con la herramienta ejecute:

        kraken-mobile run --properties="properties.json"

      
## Tabla de funcionalidades y Escenarios:

| Funcionalidades | Escenarios | Descripción 	 |
|-------------------------|---------------------------|---------------------------|
| Crear un post       |  Escenario 1 crear un post como borrador con título | Se realiza un login, se navega hasta los Post, se escribe un texto paramétrico en el post, se verifica que exista en la lista de post  |
| Eliminar un post |Escenario 2 eliminar un post de borradores| Se realiza login, seleccionamos un post con titulo paramétrico en las opciones del mismo se realiza la eliminación. se verifica que corre sin defectos.|
|Publicar un post |Escenario 3 publicar un post y verificarlo en la página|Se realiza login, se crea un post, se verifica el post en la lista, se ingresa nuevamente al post, se publica, se verifica que en la página principal se encuentre publicado
|Publicar un post |Escenario 4 verificar generar slug|Se realiza login, se selecciona un post publicado, se obtiene el link generado en la configuración, se visita dicho link y se verifica que el titulo corresponda a dicho link.|
|Eliminar un post| Escenario 5 Eliminar un post publicado|Se realiza login, se visita la página de post publicados, se ingresa a la configuración, se elimina el post|
| Crear una página   | Escenario 6 crear una pagina como borrador con título | Se realiza un login, se navega hasta las paginas, se escribe un titulo el header de la pagina y se verifica que exista en la lista de pages |
| Eliminar una página |Escenario 7 eliminar una pagina de borradores| Se realiza login, seleccionamos una pagina con titulo paramétrico en las opciones del mismo se realiza la eliminación. se verifica que corre sin defectos.|
|Publicar una página |Escenario 8 publicar una página y verificar en la parte inferior de la página su publicación|Se realiza login, se crea una página, se verifica la página en la lista, se ingresa nuevamente a la página, se publica, se verifica que en la página principal se encuentre publicado.
|Verificar el autor de una página |Escenario 9 publicar una página y verificar en la parte superior derecha en las configuraciones de la página su creador|Se realiza login, se crea una página, se verifica la página en la lista, se ingresa nuevamente a la página, se verifica en las configuraciones en la página principal superior derecha se encuentre el respectivo creador parametrizado.
|Validar la existencia del link de una pagina luego de creada|Escenario 10 publicar una página y verificar la existencia de la publicación|Se realiza login, se crea una página, se verifica la página en la lista, se ingresa nuevamente a la página, se accede a configuraciones en la parte superior derecha y se accede al link creado.
|Crear Tag |Escenario 11 creacion de tags | Se realiza el login, se direciona a tags se diligencia el nombre y el slug y se guarda|
|Validar Tag Post |Escenario 12 validacion de tags en post| Se realiza el login, se direciona a post, se ingresa a la pagina welcome, se ingresa a los settigns y se seleciona el yag creado.
|Validar Tag Page |Escenario 13 validacion de tags en post| Se realiza el login, se direciona a page, se ingresa una Page, se ingresa a los settigns y se seleciona el tag creado.
|Eliminar Tag |Escenario 14 Eliminacion de tags| Se realiza el login, se direciona a tags, se seleciona uno, se selecciona la opcion de eliminar, luego de confirmar y se retorna al listado de tags
|Validar Tag En Web Reader |Escenario 15 Validar tags en el sitio de lectura| Se ingresa al sitio e lectura a la pagina welcome y se valida el tag asociado a la pagina.
|Actualizar zona horaria| Escenario 16 Actualizar zona horaria|Se realiza el login en el sitio web usando usuario y password, posteriormente se ingresa a la opcion generar y se realizar la actualización de la zona horaria
|Actualizar social account| Escenario 17 Actualizar social account|Se realiza el login en el sitio web usando usuario y password, posteriormente se ingresa a la opcion generar y se realizar la actualización del social account
|Actualizar Titulo del site| Escenario 18 Actualizar Titulo del site|Se realiza el login en el sitio web usando usuario y password, posteriormente se ingresa a la opcion generar y se realizar la actualización del titulo del site
|Actualizar lenguaje del site| Escenario 19 Actualizar lenguaje del site|Se realiza el login en el sitio web usando usuario y password, posteriormente se ingresa a la opcion generar y se realizar la actualización del lenguaje del sitio
|Actualizar metadata del site| Escenario 20 Actualizar metadata del site|Se realiza el login en el sitio web usando usuario y password, posteriormente se ingresa a la opcion generar y se realizar la actualización de la metadata del sitio.

