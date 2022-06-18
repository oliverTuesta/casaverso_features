Feature: Visualizar proyecto en 2D

    Scenario Outline: El diseñador/cliente abre el proyecto para poder visualizarlo a través de su celular o computadora
        
        Given  el quiere ver los planos en 2D, se encuentra en la pantalla de los proyectos y al presionar en uno de los botones 
        le sale dos opciones, "Planos en 2D" y "Planos en 3D"
        And mostrará una previsualización de ambos planos
        When presione el botón de "Planos en 2D"
        Then será redirigido a una pantalla en la que se podrá visualizar de forma bidimensional los planos del espacio que fue registrado en el
        proyecto. 
        And también habrá instrumentos que podrá utilizar como, mover la vista, usar la lupa y colocar comentarios en los lugares que
        se desee.
        
        Examples: 
            | Usuario   | Opción      | Simulación                                                   |
            | Alejandro | "Plano 2D"  |"El diseñador podrá visualizar los proyectos guardados en 2D".|


            
