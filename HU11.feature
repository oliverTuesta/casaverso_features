Feature: Logout de la aplicación

    Scenario Outline: El arquitecto se encuentra en el menú principal desea cerrar sesión

    Given que el diseñador/arquitecto quiere cerrar sesión 
    When le de click al boton “Cerrar sesión”
    And se muestre un recuadro con el mensaje “Usted está cerrando la sesión”
    And da a elegir 2 opciones "Confirmar" o "Regresar" 
    And al darle al botón "Confirmar"
    Then será redirigido al menú de “Login”  
    
    Examples:
        | Usuario   | Opción          | Botón       | Mensaje                           |
        | Alejandro | “Cerrar sesión” | "Confirmar" | "Su sesión fue cerrada con éxito" |

    Scenario Outline: El arquitecto desea cerrar sesión pero aun no guarda los cambios o tiene abierto uno de sus planos 

    Given que el arquitecto desea cerrar la sesión
    When le de click al boton “Cerrar sesión”
    And se muestre un recuadro con el mensaje “Usted está cerrando la sesión”
    And da a elegir 2 opciones "Confirmar" o "Regresar" 
    And al darle al botón "Confirmar".
    Then el proyecto se guardara los cambios y se cerrará sesión

    Examples:
        | Usuario   | Opción          | Botón       | Simulación                                                                          |
        | Alejandro | “Cerrar sesión” | "Confirmar" | "El proyecto se guarda con todos los cambios realizados hasta finalizada la sesión" |

        
