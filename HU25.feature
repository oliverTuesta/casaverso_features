Feature: Diseñadores disponibles

    Scenario Outline: El usuario visualiza la pantalla "Diseñadores disponibles"

Given El usuario visualiza la pantalla “Diseñadores disponibles”
        When el usuario estando en la página “Menú principal”
        And presiona el boton “Diseñadores disponibles”
        Then el sistema muestra la página “Diseñadores disponibles”

        Examples:
            | boton                   | pantalla                |
            | Diseñadores disponibles | Diseñadores disponibles |
