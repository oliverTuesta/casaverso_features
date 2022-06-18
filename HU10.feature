Feature:Login a la aplicación 

    Scenario Outline: El arquitecto ingrese correctamente el usuario y contraseña

    Given que el arquitecto ingresa un usuario y contraseña válida  
    When inserte su nombre de usuario
    And inserte su contraseña 
    And le de click al botón de “Ingresar”
    Then será dirigido al menú principal de la página
    
    Examples:
        | Nombre       | Contraseña | Simulación                                                                    |
        |Alejandro_211 | Wit_pot    | “El arquitecto tendrá la opción de ver las opciones que ofrece la aplicación” | 

    Scenario Outline: El arquitecto ingresa un usuario que no existe en la base de datos

    Given que el usuario ingresado por el cliente no existe
    When inserte su nombre de usuario
    And inserte su contraseña
    And de click al botón “Ingresar”
    Then le aparecerá un recuadro al centro de la pantalla indicando que no existe la cuenta en la base de datos
    
    Examples:
        | Nombre        | Contraseña | Mensaje                           |
        | Alejandro_211 | Wit_put    | “El usuario registrado no existe” |
    
    Scenario Outline: El diseñador/arquitecto ingrese incorrectamente el usuario o contraseña

    Given que el arquitecto ingresa un usuario y contraseña invalida 
    When inserte su nombre de usuario
    And inserte su contraseña
    And de click al botón “Ingresar”
    Then le aparecerá un recuadro al centro de la pantalla indicando que el usuario o contraseña ingresada es incorrecta
    
    Examples: 
    | Nombre    | Contraseña | Mensaje                                    |  
    | Alejandro | 123456     | “Los datos ingresados no estan registrados”|
    
