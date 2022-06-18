Feature: Recibe la solicitud del cliente

    Scenario Outline: El arquitecto se encuentra con la solicitud del cliente en su buzón de la aplicación

    Given  que el arquitecto encuentra la solicitud del cliente 
    When le da click al botón con el ícono de buzón 
    Then le mostrará la solicitud del cliente en donde se verá su Nombre y Correo
    And un breve resumen de lo que quiere 

    Examples: 
        | Usuario   | Opción           | Simulación                                                                                           |
        | Alejandro | "Ícono de buzón" | “El diseñador tendrá la opción de ver las solicitudes de los clientes, mostrando su nombre y correo” |
 
    Scenario Outline: El arquitecto recibe más de 5 solicitudes al mismo tiempo y arma una lista de espera.

    Given  que el arquitecto encuentra la solicitud del cliente 
    When le da click al botón con el ícono de buzón 
    And selecciona la opción “Crear Lista”
    Then se inserta los nombres de los clietes en el orden en que se les atenderá 
    And se mostrará una confirmación de “Si” o “No” para continuar

    Examples:
        | Usuario   | Opción           | Botón         | Simulación                                                                                       |
        | Alejandro | "Ícono de buzón" | “Crear lista” | “El diseñador arma una lista de clientes a atender de acuerdo al tiempo que demoró su solicitud” |

