Feature: Método de pago

Scenario Outline: El usuario utiliza el método gratis
Given que el usuario no utiliza el método premium
Whem este(a) utilice nuestra app le aparecerá en algunos casos unos anuncios publicitarios.
Then el usuario tendrá que esperar que termine el anuncio para así poder reanudar con lo que realizaba.

Example:
|Usuario | Método de pago | Simulación |
|Vania | Gratis | "Al usuario le aparece un anuncio y lo tiene que ver para continuar"|

Scenario Outline: El usuario utiliza el método premium.
Given que el cliente desea una mejor experiencia
When está en el menú principal en la parte inferior derecha 
And aparecerá la opción premium 
Then al darle click le aparecerá un cuadro de aviso diciendo: “¿Desea realizar esta compra?”
And el usuario tendrá 2 opciones “Aceptar” y  “Denegar”.

Example:
|Usuario | Método de pago | Simulación |
|Vania | Premium | "El usuario puede continuar con sus actividades sin ninguna interrupción"|