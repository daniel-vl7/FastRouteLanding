Feature: US08 - Visualización en el mapa de tráfico o zonas peligrosas a mi alrededor
Como usuario, quiero poder visualizar mapas que muestren el tráfico a mi alrededor o zonas
peligrosas para poder tomar una decisión y elegir mi ruta.

Scenario: El usuario quiere dirigirse a un lugar específico y planea su ruta en la app
    Dado que el <usuario> quiere usar el <mapa> para saber qué ruta es la mejor
    Cuando el usuario acceda a la pestaña <mapa> y ponga su <destino>
    Entonces se le mostrará las <rutas mas seguras>
    Y las <zonas> donde hayan ocurrido asaltos o eventos que dificulten el tránsito 
    marcadas como rojas

    Examples: INPUT
        | usuario | destino |
        | Marco Polo | Avenida Julio Bailetty 662 |
    
    Examples: OUTPUT
        | mapa | rutas mas seguras | zonas |
        | Mapa | Ruta segura 1 - Ruta segura 7 | Zona roja 4 - Zona roja 5 |

Scenario: El usuario quiere revistar los detalles del mapa
    Dado que el <usuario> tiene una <ruta> establecida
    Cuando el usuario seleccione el <icono de informacion>
    Entonces el sistema mostrará las <estadisticas de la ruta> elegida

    Examples: INPUT
        | usuario | ruta |
        | Marco Polo | Desde Av. San Borja Este 3151 hasta Av. Arequipa 110 |
    
    Examples: OUTPUT
        | icono de informacion | estadisticas de la ruta |
        | Se mostrará información de la ruta | Esta ruta cuenta con 5 lugares conocidos, se pasa por zonas seguras, comentarios positivos |
    
    
