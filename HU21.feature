Feature: Horaio de atencion

    Scenario Outline: El cliente ve el horario de atencion del arquitecto y observa que concuerda con el tiempo

        Given el cliente quiere ver hasta que hora trabaja el arquitecto
        And se encuentra en el perfil del arquitecto
        When da click en "Ver Horario"
        Then se muestra los horarios que tiene disponible el arquitecto
        And la opcion de escoger un horario "Horario 00:00"
        And la opcion de confirmar horario "Seguir Consulta"

        Examples:
            | Usuario          | Opcion        | Informacion y Simulacion                                                          |
            | Luisito Comunica | "Ver Horario" | Muestra de horarios de disponibilidad y registro una vez que se escoja un horario |

    Scenario Outline: El cliente ve el horario del arquitecto y observa que no concuerda con sus tiempos

        Given el cliente necesita ver el horario del arquitecto
        When el cliente le da click en "Ver Horario"
        Then cuando se da cuenta que no coincide con sus horarios regresa el listado de diseñadores

        Examples:
            | Usuario | Opcion        | Informacion y Simulacion                                                     |
            | Lukario | "Ver horario" | Muestra de horarios y como no coincide se regresa al registro de diseñadores |