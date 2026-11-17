# Bitácora - Asistente de Taquilla Rueda Libre (v0.1)

## MiniReto 1 · Kilómetro 0: el alquiler sin ambigüedades

### 1. Primera versión del algoritmo (Lenguaje natural)
1. Saludar al cliente cuando entra al local.
2. Preguntarle qué bicicleta quiere y por cuánto tiempo.
3. Buscar una bicicleta y revisarla.
4. Pedirle los documentos al cliente.
5. Cobrar el alquiler.
6. Entregar la bicicleta, el casco y el candado.
7. Despedir al cliente.

---

### 2. Ambigüedades detectadas en la prueba con compañero
Al leer y ejecutar literalmente la primera versión sin usar sentido común, se encontraron los siguientes vacíos:
* **Paso 2:** No especifica qué tipos de bicicletas existen ni qué hacer si no hay bicicletas disponibles en el local.
* **Paso 3:** No indica *qué* se debe revisar exactamente de la bicicleta (¿frenos, llantas, cadena?) ni qué hacer si la bicicleta revisada tiene una falla.
* **Paso 4:** "Pedir los documentos" es ambiguo: no aclara qué documento se exige (cédula, pasaporte) ni si se retiene o solo se registran los datos. Tampoco dice qué pasa si el cliente no trae documento.
* **Paso 5:** No define cómo se calcula el valor a cobrar ni qué medios de pago se aceptan.
* **Paso 6:** No incluye la entrega de la llave o clave del candado, ni la verificación de talla del casco.

---

### 3. Versión corregida del algoritmo
**Inicio**
1. Saludar al cliente y preguntar cuántas horas desea alquilar una bicicleta urbana.
2. Verificar en la zona de parqueo si hay al menos una bicicleta urbana disponible:
   * **Si NO hay bicicletas disponibles:** Informar al cliente que no hay disponibilidad en el momento, agradecer su visita e ir al paso 11 (**Fin**).
   * **Si SÍ hay bicicletas disponibles:** Continuar al paso 3.
3. Seleccionar una bicicleta disponible y ejecutar la revisión técnica básica: comprobar presión de aire en ambas llantas, funcionamiento de frenos delantero y trasero, y ajuste del sillín.
   * **Si la bicicleta presenta fallas:** Apartarla para mantenimiento y repetir el paso 2 con otra unidad.
4. Solicitar al cliente su documento de identidad físico (cédula de ciudadanía o pasaporte).
   * **Si el cliente NO presenta documento válido:** Informar que es requisito obligatorio para el alquiler, cancelar el proceso e ir al paso 11 (**Fin**).
5. Registrar en la planilla de taquilla: nombre completo del cliente, número de documento, código de la bicicleta asignada y hora de inicio. Devolver el documento al cliente.
6. Calcular el valor total multiplicando las horas solicitadas por $10.000 COP e informar el monto al cliente.
7. Recibir el pago en efectivo o transferencia y entregar el recibo correspondiente.
8. Seleccionar un casco limpio en buen estado, ajustarlo a la medida del cliente y entregar un candado de guaya junto con su llave (o clave verificada).
9. Entregar la bicicleta verificada al cliente en la salida del local y recordarle la hora límite de devolución.
10. Despedir al cliente deseándole un buen recorrido.
**Fin**

---

### 4. Justificación de las características del algoritmo
* **Precisión:** Cada instrucción indica exactamente qué hacer sin dar lugar a dudas. *Ejemplo en el texto:* En el paso 3 no dice solo "revisar", sino *"comprobar presión de aire en ambas llantas, funcionamiento de frenos delantero y trasero, y ajuste del sillín"*.
* **Finitud:** El proceso tiene un número limitado de pasos y siempre llega a un cierre, incluso cuando ocurre un imprevisto. *Ejemplo en el texto:* Si no hay bicicletas (paso 2) o no hay documento (paso 4), el flujo salta explícitamente al **paso 11 (Fin)**.
* **Orden:** La secuencia lógica evita errores operativos como cobrar antes de saber si hay inventario. *Ejemplo en el texto:* Primero se verifica disponibilidad y estado mecánico (pasos 2 y 3), luego se piden datos y se cobra (pasos 4 a 7), y al final se entrega el equipo (pasos 8 y 9).
* **Determinismo:** Ante las mismas condiciones de entrada, el resultado del proceso es siempre idéntico sin importar quién atienda en taquilla. *Ejemplo en el texto:* En el paso 6, para cualquier cliente que pida 3 horas, el cálculo *"horas solicitadas por $10.000 COP"* siempre arrojará $30.000 COP.
* **Efectividad:** Todas las operaciones son básicas y realizables por una persona en taquilla con las herramientas disponibles. *Ejemplo en el texto:* Verificar frenos, leer una cédula, multiplicar por 10.000 y entregar un candado son acciones directas y ejecutables en tiempo real.

---

### 5. Pilares del pensamiento computacional aplicados
* **Descomposición:** Se dividió el problema general ("atender un alquiler") en subprocesos manejables: recepción y consulta de inventario, inspección técnica, registro y validación de identidad, liquidación y cobro, y entrega de equipamiento.
* **Reconocimiento de patrones:** Se identificó que, sin importar quién sea el cliente, siempre se repite la misma estructura: validar disponibilidad → validar identidad → calcular tarifa base ($10.000 × horas) → entregar kit estándar (bicicleta + casco + candado).
* **Abstracción:** Se dejaron por fuera detalles irrelevantes para la operación de taquilla, como el color de la ropa del cliente, el motivo personal de su paseo, la marca específica de los tornillos de la bicicleta o el clima del día, enfocándose únicamente en los datos necesarios para el contrato y el cobro.
* **Algoritmo:** Es la secuencia ordenada y finita de 10 pasos documentada en la sección 3, que estandariza la atención de principio a fin.