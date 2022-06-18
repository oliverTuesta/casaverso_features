Feature: Diseñadores disponibles

    Scenario Outline: El diseñador compra el paquete de publicidad

        Given que el diseñador quiere adquirir el paquete de publicidad
        When da click a la opción “Adquirir paquete” en la ventana de inicio, se muestra una ventana en donde tendrá que registrar sus datos
        And efectuar el método de pago
        Then el diseñador tendrá la opción de aparecer en el más seguido e inicio para destacar entre la competencia.

        Examples:
            | boton            | mensaje                                       |
            | adquirir paquete | "Usted ha adquirido el paquete de publicidad" |

    Scenario Outline: El diseñador adquiere la prueba gratis del paquete de publicidad

        Given que el diseñador observa que existe un paquete de publicidad gratis
        When da click a la opción “Adquirir paquete” en la ventana de inicio, se muestra una ventana en donde tendrá que registrar sus datos
        And efectuar el método de pago
        Then el diseñador podrá destacar  entre la demás competencia por el periodo de tres días.

        Examples:
            | boton                       | mensaje                                                        |
            | adquirir paquete por 3 dias | "Usted ha adquirido la prueba gratis de publicidad por 3 dias" |
