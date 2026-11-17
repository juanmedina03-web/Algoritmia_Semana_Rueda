# Ejercicios de Ciclos y SubProcesos en PSeInt

Colección de 4 algoritmos desarrollados en PSeInt aplicando ciclos y modularización.

1. **`CajaTienda.psc`**  
   * **Por qué de su lógica:** Usa un ciclo `Mientras` para sumar ventas y contar clientes de forma indefinida hasta que el usuario digite `0` para cerrar la caja.

2. **`Notas.psc`**  
   * **Por qué de su lógica:** Emplea un ciclo `Para` dentro de un `SubProceso` para recorrer un arreglo de calificaciones y evitar la división por cero si la lista llega vacía.

3. **`DibujarPiramide.psc`**  
   * **Por qué de su lógica:** Utiliza dos ciclos `Para` anidados en cada fila para imprimir primero los espacios de alineación y luego los asteriscos correspondientes a cada piso.

4. **`Restaurante.psc`**  
   * **Por qué de su lógica:** Divide la facturación en `SubProcesos` independientes para separar el cálculo de platos, la propina opcional y la impresión final del recibo.

FacturaRestaurante (Algoritmo Principal)
- calcularPlatos(cantPlatos)          --> Pide precios con un ciclo y suma el subtotal
- calcularPropina(subtotal, respuesta)--> Calcula el 10% si dice "S", si no devuelve 0
- mostrarTicket(sub, prop, total)     --> Imprime el resumen final en pantalla