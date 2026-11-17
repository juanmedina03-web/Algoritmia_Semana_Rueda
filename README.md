# Rueda Libre · Sistema de Algoritmia y Atención en Taquilla (v0.1)

Proyecto dedicado a documentar, estandarizar y automatizar las operaciones de cobro y atención al cliente para el servicio de alquiler de bicicletas **Rueda Libre**, mediante soluciones lógicas desarrolladas en pseudocódigo.

## Estructura y Archivos del Repositorio

Este espacio almacena los siguientes recursos diseñados en **PSeInt**:
1. `algoritmos/01_cotizacion_basica.psc`: Programa secuencial encargado de liquidar el valor a pagar por el alquiler individual de bicicletas urbanas según la cantidad de horas.
2. `algoritmos/02_cotizacion_recorrido.psc`: Herramienta de cotización para tours guiados que calcula el costo total, el abono inicial del 30 % y el valor restante por cubrir.
3. `algoritmos/03_cuenta_grupo.psc`: Versión inicial (v0.1) del asistente de taquilla que consolida alquileres y recorridos grupales, suma la contribución voluntaria del 10 % y ajusta la cuota individual hacia arriba al múltiplo de 100 más cercano.
4. `diagramas/02_cotizacion_recorrido.png`: Representación gráfica del flujo lógico correspondiente al algoritmo de recorridos guiados.

## Guía de Ejecución en PSeInt

1. Obtén e instala la última versión desde el portal oficial de [PSeInt](http://pseint.sourceforge.net/).
2. Ajusta las opciones del lenguaje activando un perfil estricto (como *Strict* o uno personalizado que obligue a declarar todas las variables previamente).
3. Inicia el programa, dirígete al menú **Archivo > Abrir** y carga cualquiera de los scripts guardados en el directorio `algoritmos/`.
4. Pulsa la tecla **F9** (o el ícono verde de reproducción) para correr la simulación e interactuar desde la terminal ingresando los valores de prueba.