Feature: Logout de la aplicacion

    Scenario Outline: El cliente se encuentra en el menú principal y desea cerrar sesión
        
        Given el cliente quiere cerrar sesión
        When de click al botón "Cerrar sesión" ubicado en el menú principal en la esquina inferior de la derecha
        And el sistema preguntará si quiere cerrar la sesión
        Then será redirigido al menú de "Log In", donde además le aparecerá un cuadro informando que su sesión fue cerrada con éxito.
        
        Examples: 
            | Usuario   | Opción          | Simulación                                                                                    |
            | Judas     | "Cerrar sesión" |"El usuario podrá cerrar la sesión con el botón "cerrar sesión", y confirmando al sistema.|


    Scenario Outline: El cliente desea cerrar sesión pero aun no guarda los cambios o tiene abierto uno de sus planos
   
        Given que el cliente desea cerrar sesión 
        When de click al boton "Cerrar sesión" ubicado en el menú principal en la esquina inferior de la derecha
        Then aparecerá un cuadro indicando si desea confirmar la salida y que si lo hace el proyecto que tiene abierto se cerrará o si tiene
        un proyecto con cambios no guardados estos cambios serán guardados hasta el punto donde lo dejó y se cerrará el proyecto.
        And al iniciar un nuevo proyecto, se mostrará el proyecto que cerró 

        Examples:   
            | Usuario   | Opción          | Mensaje                                |
            | John      | "Cerrar sesión" |"El sistema guardó los últimos cambios".|



            
