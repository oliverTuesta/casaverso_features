Feature: Menu principal

    Scenario Outline: El usuario visualiza la pantalla del menú principal

        Given que el usuario cuenta con el rol de usuario autenticado
        When el usuario abre la aplicación
        Then el sistema muestra la página “Menú principal” conteniendo las opciones “Ver proyectos anteriores”, “Crear proyecto”, “Ver diseñadores”, “Diseñadores disponibles”, “Bandeja de entrada” y “Configuración”


        Examples:
            | usuario           | contraseña | rol                 |
            | Cristiano Ronaldo | siuuuu1234 | usuario autenticado |
