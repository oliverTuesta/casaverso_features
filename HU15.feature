Feature: Compartir diseño

    Scenario Outline: El cliente tiene la opción de compartir sus diseños
    Given que el cliente comparte sus diseños , este(a) 
    When Termina de subir su diseño
    And le aparecerá inmediatamente la opción de evaluar otros diseños.
    Then al aceptar evaluar otros diseños, el cliente podrá visualizar los diseños de otros que también hayan subido sus diseños.
    Example: 
    |Usuario | Opción | Simulación |
    |Judas | Compartir diseño | "El usuario sube su diseño a la nube de la aplicación"|

    Scenario Outline: El cliente tiene la opción de calificar y comentar diferentes diseños de otros usuarios.
    Given Que el usuario comparte sus diseños
    When Termina de subir su diseño
    And Le aparecerá inmediatamente la opción de evaluar otros diseños.
    Then Al aceptar evaluar otros diseños, el cliente podrá visualizar los diseños de otros que también hayan subido sus diseños
    And A su vez comentar para que así entre usuarios puedan 
    ayudarse en mejorar sus diseños.
    Example:
    |Usuario | Opción | Simulación |
    |Judas | Compartir diseño | "El usuario evalúa otros diseños y comenta acerca de ellos y lograr una crítica constructiva"|