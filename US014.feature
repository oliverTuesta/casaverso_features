Feature: Rate la app

    Scenario Outline: El cliente tiene la opción de calificar la app con estrellas

        Given que el cliente quiere calificar la app con estrellas
        When termine de realizar un diseño le aparecerá un cuadro de texto preguntando “¿Le ayudó esta aplicación en el diseño que deseaba?, por favor califique para mejorar nuestra app”
        Then como alternativas tendrá “sí”, la cual la llevará directamente a la página de la app
        And la opción de “no” la cual al darle click hará que el cliente continúe con lo que realizaba en la app

        Examples:
            | Usuario | Mensaje                                                                                             | Simulación                                                             |
            | Javier  | “¿Le ayudó esta aplicación en el diseño que deseaba?, por favor califique para mejorar nuestra app” | “El usuario presiona la opción “Si” y califica la app con 5 estrellas” |

    Scenario Outline: El cliente tiene la opción de comentar acerca de la app
        Given que el cliente quiere evaluar la app dando sus opiniones
        When termine de realizar un diseño le aparecerá un cuadro de texto preguntando “¿Le ayudó esta aplicación en el diseño que deseaba?, por favor califique y comente para mejorar nuestra app”
        Then como alternativas tendrá “sí”, la cual la llevará directamente a la página de la app
        And la opción de “no” la cual al darle click hará que el cliente continúe con lo que realizaba en la app

        Examples:
            | Usuario | Mensaje                                                                                             | Opción                      |
            | Javier  | “¿Le ayudó esta aplicación en el diseño que deseaba?, por favor califique para mejorar nuestra app” | “Comentar acerca de la app” |
