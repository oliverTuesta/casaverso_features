Feature: Registrarse en la página 
    Scenario Outline: El diseñador ingresa todos los requisitos para crear una cuenta en la aplicación
    Given que el usuario ingresa correctamente todos los datos para crear una cuenta en la aplicación 
    When le de click al botón “Crear Cuenta” 
    And ingresa sus datos 
    And crea una cuenta
    Then se le redirigirá al menú de “Login”
    And aparecerá un textbox que podrá cerrar cuando termine de leer lo que está indicado, el cual es una confirmación de que su cuenta se creó exitosamente
    
    Examples:
        | Usuario    | Opción         | Mensaje                              |               
        | Alejandro  | "Crear cuenta" | “Su cuenta fue creada correctamente” |

    Scenario Outline: El diseñador no ingrese todos los campos requeridos en el formulario

    Given que el usuario no ingresó correctamente todos los campos en el formulario
    When le de click al botón “Crear Cuenta”
    Then le aparecerá un recuadro en dónde mencionará que no todos los apartados están llenados correctamente 
    And al presionar cualquier tecla desaparecerá 
    And la pantalla regresará a los campos que no han sido rellenados correctamente

    Examples:
     | Usuario    | Opción         | Mensaje                                                       |
     | Alejandro  | "Crear cuenta" | "El usuario o contraseña es incorrecto, inténtelo nuevamente" |

     
