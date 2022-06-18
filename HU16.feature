Feature: Edición del diseño del hogar (gratis / pago)

Scenario Outline: El cliente desea más opciones para editar los diseños de su hogar, utilizando la versión gratis.
Given que el usuario utiliza la versión gratis, solo tiene la opción nomas de virtualizar su casa
When utilice esta versión podrá utilizar la cámara o planos que le ayudará a escanear su hogar.
Then dando clic en el botón de la cámara se le ayudará a editar desde su celular o pc esos planos o la imagen tomada por la cámara.

Example:

|Usuario | Versión | Simulación|
|Matias | Gratis | "El usuario edita el plano o la imagen"|

Scenario Outline: El cliente desea más opciones para editar los diseños de su hogar, utilizando la versión de pago.

Given que el usuario utiliza la versión de pago, además de tener la opción de virtualizar su casa como las versiones gratis.
When utilice está versión comprando en el menú principal en la esquina inferior derecha el método premium tendrá la opción de contactar diseñadores.
Then dando click en el botón con la imagen de un rodillo en el menú principal, le aparecerá la opción de seguir el rediseño en tiemmpo real y modificarlo.

Example:
|Usuario | Versión | Simulación |
|Matias | Premium | "El usuario ve en tiempo real las modificaciones de su hogar"