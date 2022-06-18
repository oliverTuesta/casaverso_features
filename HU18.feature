Feature: Notificaciones

Scenario Outline: El usuario recibe una notificación y decide ignorarla
Given que el sistema muestra una pequeña ventana que contiene un breve asunto
And dos botones: “ignorar” e “ir”.
When el usuario hace click en el botón “ignorar” 
Then la notificación desaparece de la pantalla 
And se guarda en la sección “bandeja de entrada” 

Example:
|Usuario| Opción |Simulacion|
|Alejandro | Ignorar | "Al usuario le parece una notificacion y le da a cerrar"|

Scenario Outline: El usuario recibe una notificación y decide visualizarla
Given que el sistema muestra una pequeña ventana que contiene un breve asunto, detalle sobre la notificación 
And dos botones: “ignorar” e “ir”.
When el usuario hace click en el botón “ir”  
Then la notificación se pone en pantalla completa y se podrá visualizar el asunto y detalle de la notificación. 
And  habrá un botón “regresar” que nos volverá a la sección en la cual el usuario se encontraba antes de hacer click en “ir”

Example:
|Usuario|Opción|Simulacion|
|Alejandro|Ir| "La notificación hace popup y el usuario podrá leer el contenido completo"|
