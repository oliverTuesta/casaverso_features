Feature: Login a la aplicación

    Scenario Outline: El cliente ingresa correctamente el usuario y cotraseña
        
        Given el cliente ingresa un usuario y contraseña válida
        And el sistema acepta al usuario
        When le de click al botón de "Ingresar"
        Then será dirigido al menú principal 
        And aparecerá la pantalla principal, en donde se encontrarán diversas opciones.
        
        Examples:   
            | Usuario   | Opción     | Simulación                                                           |
            | Pedro     | "Ingresar" | "El usuario podrá ingresar a las opciones que muestra la aplicación".|


    Scenario Outline: El cliente ingresa un usuario que no existe en la base de datos

        Given el usuario ingresado por el cliente no existe
        And el sistema detecta un error
        When da click al botón "Ingresar"
        Then aparecerá una pantalla indicando que no existe la cuenta en la base de datos 
        And será incitado a crear una cuenta o ingresar con otro usuario.

        Examples:
            | Usuario   | Opción     | Mensaje                           |
            | Juan      | "Ingresar" | "El usuario registrado no existe".|


    Scenario Outline: El cliente ingresa incorrectamente el usuario o contraseña

        Given el cliente ingresa un usuario y contraseña inválida
        And el sistema detecta un error 
        When da click al botón "Ingresar"
        And ubicado al final de la pantalla
        Then le aparecerá un cuadro indicando que el usuario o contraseña ingresada está mal y que lo intente otra vez.
        And tendrá que realizar la operación correctamente

        Examples:
            | Usuario   | Opción     | Mensaje                                   |
            | Pablo     | "Ingresar" | "El usuario o contraseña son incorrectos".|


            
