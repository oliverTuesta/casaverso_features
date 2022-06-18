Feature: Login a la aplicacion a traves de entidades terciarias

    Scenario Outline: El cliente escoge la opción de ingresar con una cuenta de Google o Facebook y se encuentra ingresado a esa cuenta en el dispositivo donde se encuentre
        
        Given  el cliente escoge una cuenta de Google o Facebook que está registrado en la base de datos de la aplicación y esta ingresada a su cuenta del dispositivo donde 
        se encuentra
        When le de click a la cuenta de "Facebook" o "Google"
        And el sistema enviará un cuadro de texto confirmando la operación
        Then será dirigido al menú principal de la página 
        And también podrá compartir sus diseños por el medio escogido.
        
        Examples: 
            | Usuario   | Opción                                                       | Simulación                                                         |
            | Diego     |"Iniciar sesión con Facebook" o  "Iniciar sesión con Google"  | El usuario podrá ingresar a las opciones que muestra la aplicación |


    Scenario Outline: El cliente escoge la opción de ingresar con una cuenta de Google o Facebook pero no se encuentra ingresado a esa cuenta en el dispositivo donde se encuentre

        Given el cliente escoge una cuenta de Google o Facebook que está registrado en la base de datos de la aplicación pero no esta ingresada a su cuenta del dispositivo donde 
        se encuentra
        When de click al botón "Ingresar con Google" o "Ingresar con Facebook"
        And el sistema enviará un cuadro de texto confirmando la operación
        Then será incitado a ingresar a su cuenta de "Facebook" o "Google" para después ingresar a su cuenta de la aplicación.
        And  también podrá compartir sus diseños por el medio escogido

        Examples:
            | Usuario   | Opción                                                    | Mensaje                                                                         |
            | Gabriel   |"Iniciar sesión con Facebook" o "Iniciar sesión con Google"|"Registrar cuenta a través de Facebook” o “Registrar cuenta a través de Google" |

