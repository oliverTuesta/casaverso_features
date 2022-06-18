Feature: Registrarse

    Scenario Outline: El cliente ingresa todos los requisitos para crear una cuenta en la aplicacion

        Given el cliente se encuentra en la pagina de registrarse
        When el cleinte ingreso correctamente los datos "Nombre", "Apellido", "Correo", "Numero Celular" y "Contraseña"
        And le da click al boton de "Crear Cuenta"
        Then