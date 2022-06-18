Feature: Visualizar proyecto en 3D

    Scenario Outline: El diseñador/cliente abre el proyecto para poder visualizarlo a través de su celular o computadora
        
        Given el quiere ver los planos en 3D, se encuentra en la pantalla de los proyectos y al presionar en uno de los botones 
        le sale dos opciones, "Planos en 2D" y "Planos en 3D"
        And mostrará una previsualización de ambos planos
        When presione el botón de "Planos en 3D" 
        Then será preguntado si lo desea ver con gafas virtuales, en caso presione "No", será redirigido a una pantalla en la que 
        se podrá visualizar de forma tridimensional los planos del espacio que fue registrado en el proyecto. 
        And también habrá instrumentos que podrá utilizar como, mover la vista, usar la lupa y colocar comentarios en los lugares que se desee.
        
        Examples: 
            | Usuario   | Opción     | Simulación                                                  |
            | Matias    |"Plano 3D"  | El diseñador podrá visualizar los proyectos guardados en 3D |


    Scenario Outline: El diseñador/cliente abre el proyecto para poder visualizarlo a través de sus gafas virtuales

        Given  el quiere ver los planos en 3D, se encuentra en la pantalla de los proyectos y al presionar en uno de los botones
        le sale dos opciones, "Planos en 2D" y "Planos en 3D" 
        And  mostrará una previsualización de ambos planos
        When presione el botón de "Planos en 3D"
        Then será preguntado si lo desea ver con gafas virtuales. En tal caso se le preguntará el tipo de gafas que usará y dependiendo del caso 
        se programará en el teléfono para visualizarlo en 3D o se conectará vía bluetooth al dispositivo de gafas virtuales.
        And también habrán instrumentos que podrá utilizar como, mover la vista, usar la lupa y colocar comentarios en los lugares que se desee.

        Examples:
            | Usuario   | Opción     | Simulación                                                                            |
            | Luis      |"Plano 3D"  | El diseñador visualiza los proyectos guardados en 3D a través de las gafas virtuales. |


            