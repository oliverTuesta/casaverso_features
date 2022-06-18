Feature: Valorar desempeño del diseñador

Scenario Outline: El usuario decide valorar el desempeño de su diseñador asignado
Given que el sistema muestra una pantalla preguntando “¿Qué tal ha sido su experiencia trabajando con NOMBRE DEL DISEÑADOR?”. 
And el sistema muestra 5 estrellas de color blanco
And el sistema muestra un botón “salir” 
When el usuario hace click en cualquiera de las estrellas mostradas
Then el sistema guardará la valoración
And el usuario será redirigido la sección “Enviar feedback”

Example:
|Usuario| Método | Simulación |
|María | Valorar | "El usuario valora el trabajo con 5 estrellas" |

Scenario Outline: El usuario decide no valorar el desempeño de su diseñador asignado
Given que el sistema muestra una pantalla preguntando “¿Qué tal ha sido su experiencia trabajando con NOMBRE DEL DISEÑADOR?”. 
And el sistema muestra 5 estrellas de color blanco
And el sistema muestra un botón “salir” 
When el usuario hace click en el botón “salir”
Then el usuario vuelve a la pantalla en la cual se encontraba

Example:
|Usuario | Método | Simulacion |
|María | Valorar | "El usuario no valora el trabajo " |
