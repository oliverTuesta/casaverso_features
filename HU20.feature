Feature: Enviar feedback de los diseñadores

    Scenario Outline: El usuario visualiza el formulario "Brindar feedback"

        Given que el sistema muestra el formulario "Brindar Feedback"
        And este tiene las opciones de "Comentario" y "Salir"
        When el usuario le da click en "Salir"
        Then el sistema sale de la pantalla "Brindar Feedback"
        And muestra el mensaje "Podras enviar feedback mas adelante"

        Examples:
            | Usuario | Opcion  | Mensaje y Sistema                                                               |
            | Leonel  | "Salir" | "Podras enviar feedback mas adelante" y se cierra la ventana "Brindar Feedback" |

    Scenario Outline: El usuario envio el fomulario con datos validos

        Given que el sistema muestra el formulario "Brindar Feedback"
        And este tiene las opciones de "Comentario" y "Salir"
        When el usuario presiona el boton "Enviar Feedback"
        Then el sistema envia el "Feedback"
        And muestra el mensaje "Su feedback fue enviada con exito"
        And el usuario vuelve a la pantalla inicial

        Examples:
            | Usuario | Opcion            | Sistema y Mensaje                                                                                             |
            | Pique   | "Enviar Feedback" | sen envia el feedback, muestra el mensaje "Su feedback fue enviada con exito" y regresa a la pantalla inicial |