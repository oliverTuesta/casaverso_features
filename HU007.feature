Feature: Contactar diseñador

    Scenario Outline: El cliente realiza una búsqueda exitoso de diseñadores disponibles
        
        Given el cliente busca un diseñador
        When da click al botón "Contactar Diseñador" de la esquina inferior izquierda
        And el sistema enviará un cuadro de texto confirmando la operación
        Then le mostrará la información de contacto de todos los diseñadores registrados dentro del sitio web y dentro de ella aparecerá
        un cuadro con la información requerida siendo NOMBRE, CORREO y TELÉFONO.
        
        Examples: 
            | Usuario   | Opción                | Mostrar información                                      |
            |  Ana      |"Contactar Diseñador"  | "El usuario podrá observar la lista de los diseñadores"  |


    Scenario Outline: El cliente realiza una búsqueda de diseñadores en el que tendrá que formar parte de una lista de espera

        Given el cliente busca un diseñador
        When da click al botón "Contactar Diseñador" de la esquina inferior izquierda
        And el sistema enviará un cuadro de texto confirmando la operación
        Then si no hay diseñadores disponibles mostrará un mensaje con las opciones de "FORMAR PARTE DE LA LISTA DE ESPERA" y "CANCELAR".

        Examples:
            | Usuario   | Opción                 | Mensaje                                           |
            | Hugo      | "Contactar Diseñador"  | "Formar parte de la lista de espera" o "Cancelar" |

            