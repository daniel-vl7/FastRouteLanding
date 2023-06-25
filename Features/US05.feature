Feature: US05 - Ver la lista de todas las rutas tomadas

Como usuario, quiero poder ver una lista de todas las rutas que he tomado,
para poder recordar los lugares que concurrí.

Scenario: Guardar rutas utilizadas por el usuario
    Dado que el <usuario> quiere guardar la <ruta> que 
    utilizó para desplazarse
    Y el usuario se encuentra en el apartado de <Mis Rutas>
    Cuando el usuario seleccione ver <rutas guardadas>
    Entonces el sistema mostrará las rutas utilizadas en viajes anteriores desplazarse
    usuario
    Y podrá guardar la <ruta> que utilizó.

    Examples: INPUT
        | usuario | ruta | 
        | Marco Polo  | Desde Av. Reducto 540 hasta Av. Casuarinas 900  | 
    
    Examples: OUTPUT
        | Mis Rutas | rutas guardadas |
        | rutas guardadas - rutas compartidas - rutas editadas | Ruta guardada 1 - Ruta guardada 2|

