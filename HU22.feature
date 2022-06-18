Feature: Historial Cliente

    Scenario Outline: El arquitecto desea saber cual es el historial anterior de su cliente antes de hablar con el

        Given que el arquitecto desea saber cuales son los gustos del cliente por sus remodelaciones anterior
        When al llegarle una solicitud del cliente, le aparece la opción de "revisar historial", y se muestra las remodelaciones previamente realizadas a través del uso de la app
        Then el arquitecto le da click al botón de "continuar"
        And pone la opción de "Iniciar conversación"

        Examples:
            | Usuario | Opcion      | Simulacion                         |
            | Phineas | "Continuar" | Se activa el chat con un diseñador |

    Scenario Outline: Scenario Outline nameEl arquitecto al ver el historial anterior de su cliente decide no aceptar la solicitud

        Given que al arquitecto ve el historial del cliente
        When le llega una solicitud de un usuario solicitando sus servicios, visualiza las anteriores remodelación de su hogar
        And ve que no se asemeja al estilo que trabaja
        Then aprieta el botón de "Cancelar solicitud", previamente se muestran una pregunta diciendo "Estás seguro que desea cancelar está solicitud" apareciendo dos botones más "Si" o "No", y pone la opción de "No"

        Examples:
            | Usuario | Opcion               | Simulacion                            |
            | Angel   | "Cancelar Solicitud" | Se hace una verificacion de su pedido |