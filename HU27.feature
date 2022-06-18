Feature: Editar Perfil

    Scenario Outline: El diseñador decide cambiar algunos datos de su perfil

        Given el diseñador esta en su perfil
        And quiere modificar su perfil
        When presiona la opcion "Editar Perfil"
        Then le saldra la opcion de editar sus datos
        And al final tendra la opcion de "Guardar" o "Cancelar"

        Examples:
            | Usuario | Opcion          | Simulacion                                                                                      |
            | Alex    | "Editar Perfil" | Se habilita la opcion de modificar el perfil y aparecen los botones para "Guardar" y "Cancelar" |

    Scenario Outline: El diseñador decide cambiar la foto de perfil

        Given el diseñador quiere cambiar su foto de perfil
        And tiene una foto guardada en su dispositivo
        When le da click en su foto "<foto>" actual de perfil
        Then se abre el explorador para escoger una foto

        Examples:
            | Usuario | Opcion   | Simulacion                                              |
            | Alex    | "<foto>" | Se abre el explorador y la opcion de escoger una imagen |