Feature: Personalización de la aplicación 

    Scenario Outline: El cliente tiene la opción de personalizar la app con el dark and light mode

    Given que el cliente desea cambiar la personalización de la app 
    When le da click en "Configuración"
    And le da click en  "Personalizar"
    Then visualizará los modos que puede utilizar para personalizar la app

    Examples:
        | Usuario | Opción           | Opción         | Simulación                                                                                                       |
        | Javier  | "Configuración"  | "Personalizar" | “El usuario podrá elegir entre las diversas funciones que se encuentran como: “Cambiar brillo” y “Cambiar tema”” |

    Scenario Outline: El cliente tiene la opción de personalizar la app con más tipos de diseño

    Given que el cliente quiere personalizar la app
    When le da click en "Configuración"
    And le da click en  "Personalizar"
    Then encontrará los modos de personalización más comunes (light y dark)  
    And se encontrará la opción de más Temas
    
    Examples: 
        | Usuario | Opción           | Opción         | Simulación                                                           | 
        | Javier  | "Configuración"  | "Personalizar" | “El usuario podrá elegir la opción de: “Modo oscuro” o “Modo claro”” |
        
