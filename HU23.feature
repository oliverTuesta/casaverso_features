Feature: Opciones de comunicacion

    Scenario Outline: El cliente le escribe un mensaje al diseñador acerca del rediseño

        Given que el cliente necesita comunicarse directamente con el diseñador
        When le da click a la opción "Char"
        And se muestra una ventana en donde tendrá la opción de mandar mensajes de texto
        And fotos de una manera bidireccional
        Then el cliente tendrá una forma de comunicarse exclusivamente con el diseñador sin la necesidad juntarlos con otro mensajes.

        Examples:
            | Usuario | Opcion | Simulacion                                       |
            | Marco   | "Chat" | Se inicializa un chat exclusivo con el diseñador |