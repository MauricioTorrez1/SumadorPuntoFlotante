# Sumador Punto Flotante (Actividad 3)
Sumador que permite sumar (add) o restar (substract) dos números (a,b) de 13 bits del tipo flotante (float), se considerará la representación de 13 bits de la siguiente manera:
- 1 bit de signo; 0 para positivo y 1 para negativo.
- 4 bits que representarán el exponente.
- 8 bits que representarán el significando que es un número entero.

En este formato "(-1)^s * .f * 2^e":
-  La expresión .f*2^e es la magnitud del número. (12 bits)
-  (-1)^s es una manera formar para indicar que 1 implica un número negativo. (1 bit)

Bajo el formato anterior, las magnitudes más grande y más pequeña para nuestro formato simplificado de 13 bits son 0,1111_1111 * 2 ^ 1111 y 0,1000_0000 * 2 ^ 0000. Entre 0,1 y 8.355,84 (Unicamente cuando el valor del bit de signo es 0).

El sumador seguirá los mismos pasos que cuando hacemos la suma manualmente al trabajar con notación científica.
El cálculo se realizará siguiendo los siguientes pasos:
- Sorting (Clasificación): Pone el número con la magnitud más grande arriba y el número con la menor magnitud debajo.
- Align (Alineación): Alinea los dos números para que tengan el mismo exponente. Ajusta el exponente del número de MENOR magnitud al exponente del número de MAYOR magnitud.
- Addition/subtraction (Suma/Resta): Suma o resta el significando de ambos números alineados.
- Normalization (Normalizacion): Ajusta el resultado al formato normalizado si,
  a) tras la resta, el resultado contiene ceros a la izquierda,
  b) o si, tras la resta, el resultado es demasiado pequeño para ser normalizado y debe convertirse a cero,
  c) o si, tras la suma, el resultado genera un bit de acarreo.

  Se programan los diferentes módulos y paquetes para posteriormente ser instanciados en un solo proyecto (Actividad 3) capaz de realizar todos los procesos anteriores.
