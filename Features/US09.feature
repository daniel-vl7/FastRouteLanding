Feature: US09 - Enviar notificaciones o alertas en el mapa a otros usuarios
Como usuario, quiero poder enviar notificaciones o alertas en el mapa para que ayuden a otros usuarios

Scenario: Usuario ingresa a opción para publicar información que ha visto en la calle 
Dado que el <usuario> se encuentra autenticado en la app
Y el <usuario> se encuentra en la pantalla de envío de alertas a través del <mapa>
Cuando el <usuario> seleccione en el mapa la <calle> por la que acaba de transitar
Entonces la app le mostrará la pantalla para que <comparta datos de la calle seleccionada>

Examples: INPUT 
    | usuario | calle | compartir datos de la calle seleccionada |
    | Marco Polo | Calle Monti 121 | Esta calle presenta baches en la pista - no hay zonas comerciales alrededor |

Examples: OUTPUT
    | mapa | compartir datos de la calle seleccionada |
    | se muestra el mapa | Ingreso de datos exitoso | 

Scenario: Usuario publica eventos
Dado que el <usuario> se encuentra en la pantalla para <compartir datos de la calle seleccionada>
Cuando el <usuario> ingrese la <informacion de lo que va a compartir> y la <fecha> y <hora de ocurrencia>
Y el <usuario> seleccione el botón registrar informacion de eventos
Entonces la app registra el evento en su base de datos

Examples: INPUT
    | usuario | informacion de lo que va a compartir - fecha - hora de concurrencia |
    | Marco Polo | la calle cuenta con varios parques y está limpia - 15 de junio de 2023 - 09:30 AM |

Examples: OUTPUT
    | Compartir datos de la calle seleccionada | 
    | Ingreso de datos exitoso |

Scenario: Usuario visualiza información publicada por otros usuarios de la app
Dado que el <usuario> se encuentra visualizando el <mapa> de la <ruta> que va a seguir
Cuando el <usuario> seleccione la opción Ver <informacion reportada> en la ruta
Entonces  la app muestra la <informacion reportada> cerca de su <ruta> en un radio de 500 metros
y que tenga una antiguedad menor a 72 horas de haber sido reportada.

Examples: INPUT
    | usuario | ruta | 
    | Marco Polo | Desde Av. San Borja Este 531 hasta Av. El Derby 121 |

Examples: OUTPUT 
    | mapa | informacion reportada | ruta |
    | se muestra el mapa | Se reportó un robo en una tienda en este radio | Desde Av. San Borja Este 531 hasta Av. El Derby 121 |


