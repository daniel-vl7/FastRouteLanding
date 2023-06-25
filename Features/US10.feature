Feature: US10 - Encontrar elementos adicionales que brinden información adicional sobre cierta calle o zona
Como usuario, quiero encontrar elementos adicionales que brinden información adicional como reseñas de lugares,
comentarios sobre cierta calle o descripción de algún incidente, para poder estar más informado sobre dónde voy.

Scenario: El usuario quiere acceder a información más específica sobre un lugar o calle
Dado que el <usuario> quiere conocer las <resenas> de la gente sobre un <lugar>
Y saber si ha habido algún incidente en una calle recientemente
Cuando el <usuario> acceda a la pestaña <mapa> y seleccione un <lugar> específico
Entonces le saldrán varias opciones donde podrá ver <informacion del lugar>
Y las <resenas> de usuarios que han estado ahí, lo mismo para una calle específica.

Examples: INPUT 
    | usuario | lugar |
    | Marco Polo | Restaurante Cinco Estrellas |

Examples: OUTPUT
    | mapa | reseñas | información de lugar |
    | se muestra el mapa | Este lugar tiene buenos precios y la comida es muy buena, recomendado | Lugar muy bien ubicado, cuenta con seguridad |

    