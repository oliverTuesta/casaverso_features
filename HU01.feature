Feature: Crear modelo 3D que se diseñara

    Scenario Outline: El arquitecto inicia un nuevo proyecto sin el uso de planos arquitectonicos

        Given el arquitecto no usa planos arquitectonicos
        And se encuentra en el la creacion de un nuevo proyecto
        When el arquitecto presiona el boton de "Usar Camara"
        And da el permiso a la aplicacion de usar la camara
        Then se activara la camara
        And iniciara el escaneo de un modelo 3D del ambiente donde se encuentra el arquitecto mientras escanea los articulos que se encuentran.

        Examples:
            | Usuario | Opcion        | Simulación                                                                               |
            | Javier  | "Usar Camara" | "El sistema prende la camara e inicia un escaneo mientras Javier se mueve por el cuarto" |

    Scenario Outline: El arquitecto inicia un nuevo proyecto con un plano arquitectonico

        Given el arquitecto tiene a su disposicion un plano arquitectonico
        And esta en la opcion de crear un proyecto
        When el arquitecto le da click al boton "Subir Plano"
        Then el sistema abre los archivos para que el arquitecto escoja el plano a Subir
        And el sistema sube el archivo
        And crea el nuevo proyecto

        Examples:
            | Usuario   | Opcion        | Simulacion                                                        |
            | Alejandro | "Subir Plano" | El sistema abre los archivos para que Alejandro escoja un archivo |