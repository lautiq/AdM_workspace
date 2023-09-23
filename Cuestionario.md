# Arquitectura de Microprocesadores

## Indice

- [Pregunta N° 0](#Pregunta-N°-0)
- [Pregunta N° 1](#Pregunta-N°-1)
- [Pregunta N° 2](#Pregunta-N°-2)
- [Pregunta N° 3](#Pregunta-N°-3)
- [Pregunta N° 4](#Pregunta-N°-4)
- [Pregunta N° 5](#Pregunta-N°-5)



## Pregunta N° 0
Describa brevemente los diferentes perfiles de familias de microprocesadores/microcontroladores de ARM. Explique alguna de sus diferencias características.

## Respuesta N° 0

1. **Cortex-A Series (Aplicaciones Avanzadas):**
   - *Perfil:* Diseñados para alto rendimiento y aplicaciones de propósito general.
   - *Características clave:* Mayor potencia de procesamiento, capacidades de manejo de sistemas operativos completos como Android y Linux, adecuados para dispositivos móviles y servidores.
   - *Características técnicas:* Varios núcleos, memoria RAM de gran capacidad.

2. **Cortex-R Series (Tiempo Real):**
   - *Perfil:* Diseñados para aplicaciones en tiempo real y sistemas críticos.
   - *Características clave:* Mayor capacidad de respuesta, baja latencia, adecuados para sistemas de navegación, controladores de automóviles y comunicaciones de alta velocidad.

3. **Cortex-M Series (Microcontroladores):**
   - *Perfil:* Diseñados para aplicaciones embebidas y de bajo consumo de energía.
   - *Características clave:* Eficiencia energética, bajo costo, tamaño compacto, ideales para dispositivos médicos, sistemas IoT, electrodomésticos y más.


## Pregunta N° 1
Describa brevemente las diferencias entre las familias de procesadores Cortex M0, M3 y M4.

## Respuesta N° 1

- *Cortex-M0*:

    - *`Eficiencia Energética:`* El Cortex-M0 se destaca por su eficiencia energética y es adecuado para aplicaciones de bajo consumo.

    - *`Rendimiento:`* Es el miembro más básico de la serie y ofrece un rendimiento modesto.

    - *`Pipeline Simple:`* Tiene un pipeline de ejecución simple, lo que lo hace adecuado para aplicaciones simples y de bajo costo.

    - *`Capacidades de DSP Limitadas:`* Carece de instrucciones de procesamiento de señales digitales (DSP) especializadas.

- *Cortex-M3:*

    - *`Rendimiento y Eficiencia:`* Ofrece un equilibrio entre rendimiento y eficiencia energética.

    - *`Pipeline más Avanzado:`* Tiene un pipeline más avanzado que el Cortex-M0, lo que le permite ejecutar instrucciones más rápidamente.

    - *`Capacidades de DSP Limitadas:`* Al igual que el Cortex-M0, carece de instrucciones DSP especializadas.

- *Cortex-M4:*
    - *`Mejoras de Rendimiento:`* El Cortex-M4 mejora significativamente el rendimiento en comparación con el M0 y M3.

    - *`Instrucciones DSP:`* Introduce un conjunto de instrucciones DSP (Procesamiento de Señales Digitales) que lo hacen adecuado para aplicaciones que requieren cálculos matemáticos intensivos, como procesamiento de audio y control de motores.

    - *`FPU Opcional:`* Puede incluir una unidad de punto flotante (FPU) opcional para mejorar aún más el rendimiento en operaciones de punto flotante.


| Característica     | M0       | M3      | M4       |
|--------------------|----------|---------|----------|
| Thumb              | Sí       | Sí      | Sí       |
| Thumb-2            | No       | Sí      | Sí       |
| Hardware Multiply  | No       | Sí      | Sí       |
| Hardware Divide    | No       | Sí      | Sí       |
| Saturated Math     | No       | No      | Sí       |
| DSP Extensions     | No       | No      | Opcional |
| FPU                | No       | No      | Opcional |
| Arquitectura ARM   | ARMv6-M  | ARMv7-M | ARMv7E-M |

## Pregunta N° 2
¿Por qué se dice que el set de instrucciones Thumb permite mayor densidad de código? Explique.

## Respuesta N° 2

El set de instrucciones Thumb de ARM se considera que permite una mayor densidad de código en comparación con el set de instrucciones ARM tradicional, conocido como "ARM completo" o "ARM modo nativo". Esto se debe a varias razones:

- *`Instrucciones de 16 bits:`* En el set de instrucciones Thumb, la mayoría de las instrucciones se codifican en 16 bits, en lugar de los 32 bits típicos en el set de instrucciones ARM completo. Esto significa que una instrucción Thumb ocupa la mitad del espacio en memoria en comparación con su equivalente en ARM.

- *`Mayor cantidad de instrucciones por página de memoria:`* Dado que las instrucciones Thumb son más compactas, se pueden almacenar más instrucciones en la misma cantidad de memoria. Esto se traduce en una mayor densidad de código y permite que los programas ocupen menos espacio de almacenamiento.

- *`Reducción de la caché:`* La menor cantidad de espacio ocupado por las instrucciones Thumb en la memoria caché del procesador también puede llevar a una mejora en el rendimiento debido a una mayor eficiencia en el uso de la caché.

- *`Menor consumo de ancho de banda de memoria:`* En sistemas con limitaciones de ancho de banda de memoria, como sistemas embebidos o dispositivos móviles, Thumb puede ser beneficioso ya que reduce la cantidad de datos que se deben transferir desde la memoria principal, lo que ahorra energía y mejora la eficiencia general.

- *`Mejora de la densidad de código en RAM:`* La menor densidad de código también puede ser beneficiosa en sistemas donde la RAM es limitada, ya que permite que se almacene y ejecute más código en la misma cantidad de RAM disponible.

Es importante destacar que aunque Thumb ofrece una mayor densidad de código, también puede tener un impacto en el rendimiento en algunas aplicaciones debido a que las instrucciones Thumb a menudo requieren más ciclos de reloj para ejecutarse que las instrucciones equivalentes en ARM completo. Por lo tanto, la elección entre Thumb y ARM completo depende de las necesidades específicas de la aplicación, equilibrando la densidad de código con el rendimiento requerido.


## Pregunta N° 3
¿Qué entiende por arquitectura load-store? ¿Qué tipo de instrucciones no posee este tipo de arquitectura?

## Respuesta N° 3

La arquitectura load-store es un tipo de arquitectura ISA (instructions set architecture) utilizada en muchos procesadores modernos como es el caso de los procesadores ARM. En este tipo de arquitectura, las operaciones de carga `load` y almacenamiento `store` son las únicas que pueden acceder directamente a la memoria principal. 
Entonces, las instrucciones aritméticas y lógicas operan solo en registros internos y no pueden acceder directamente a la memoria. 

- *`Instrucciones load:`* Se utilizan para cargar datos desde la memoria principal (RAM) en registros internos de la CPU. Por ejemplo, una instruccion de carga podría copiar un valor de un lugar de memoria a un registro. 

- *`Instrucciones store:`* Se utilizan para almacenar datos desde registros internos en la memoria principal. Por ejemplo, una instrucción de almacenamiento podría escribir un valor desde un registro en una ubicacion de memoria especifica. 

Las instrucciones aritméticas y lógicas, como sumar, restar, multiplicar y realizar operaciones lógicas (AND, OR, NOT, etc.), solo se pueden realizar entre registros internos de la CPU. Esto significa que, antes de realizar una operación aritmética o lógica en un valor de la memoria, primero debe cargarse en un registro y, después de la operación, si se desea almacenar en la memoria, debe moverse de nuevo desde el registro.

Las instrucciones que no posee este tipo de arquitectura son las instrucciones que operan directamente en la memoria, como las que se encuentran en las arquitecturas de carga-almacenamiento (load-store). Estas incluyen instrucciones como "ADD" que suman dos valores ubicados en la memoria sin la necesidad de cargarlos en registros primero. En una arquitectura load-store, todas las operaciones aritméticas y lógicas se realizan en registros y no directamente en la memoria.

## Pregunta N° 4
¿Cómo es el mapa de memoria de la familia?

## Respuesta N° 4

Una visión general de como suele organizarse el mapa de memoria de estos microcontroladores:

- *`Memoria de Programa (Flash):`* La mayoría de los microcontroladores Cortex-M incluyen una memoria de programa incorporada (flash) donde se almacena el código ejecutable. Esta memoria de programa suele estar organizada en sectores o páginas y contiene el programa principal que se ejecuta en el microcontrolador.

- *`Memoria de Datos (RAM):`* Los microcontroladores también tienen una memoria de datos (RAM) que se utiliza para almacenar datos temporales, variables y pilas de llamadas a funciones. La organización de la RAM puede variar en tamaño y organización, y suele estar dividida en regiones para diferentes tipos de datos.

- *`Memoria de Periféricos:`* Se reserva una parte de la memoria para la configuración y control de periféricos integrados, como puertos GPIO, temporizadores, interfaces de comunicación, convertidores analógico-digitales (ADC) y otros periféricos específicos del dispositivo.

- *`Vectores de Interrupción:`* El mapa de memoria suele incluir un espacio reservado para los vectores de interrupción, que son direcciones de memoria específicas utilizadas para saltar a rutinas de manejo de interrupciones cuando se activa una interrupción.

- *`Memoria de Memoria Flash de Arranque (Boot ROM):`* Algunos microcontroladores Cortex-M incluyen una pequeña memoria ROM de arranque que contiene código de inicio del dispositivo, que puede ser útil para la programación inicial y la configuración del microcontrolador.

- *`Zonas de Memoria Reservadas:`* Pueden existir áreas de memoria reservadas para fines específicos, como configuración de hardware, almacenamiento de datos de calibración, registros especiales y otras necesidades del dispositivo.

- *`Zona de Código de Arranque (Bootloader):`* En algunos casos, los dispositivos pueden incluir una zona de memoria dedicada para un bootloader que permite la actualización de firmware y la programación del microcontrolador a través de interfaces de comunicación, como UART o USB.


## Pregunta N° 5
¿Qué ventajas presenta el uso de los “shadowed pointers" del PSP y el MSP?

## Respuesta N° 5

El uso de "shadow pointers" en los registros PSP y MSP es una característica fundamental de los microcontroladores ARM Cortex-M que simplifica la gestión de la pila, mejora la seguridad y eficiencia en la administración de la pila y facilita la implementación de sistemas embebidos de tiempo real. Estas ventajas son muy valiosas en aplicaciones donde se requiere una gestión precisa del contexto de ejecución y la conmutación de tareas. 

- Ventajas claves:

    - *`Gestión eficiente de la pila:`* Los punteros sombreados permiten alternar rápidamente entre dos pilas diferentes: la pila principal (MSP) y la pila de proceso (PSP). Esto es útil en aplicaciones en tiempo real donde es necesario cambiar de contexto entre tareas o prioridades. Cambiar entre pilas es mucho más rápido que mover datos de una pila a otra, lo que mejora la eficiencia y reduce la latencia en la conmutación de tareas.
    - *`Protección de la pila del sistema:`* La pila principal (MSP) se utiliza para el sistema y el núcleo del programa, mientras que la pila de proceso (PSP) se utiliza para el código de la tarea en ejecución. Al utilizar punteros sombreados, es más difícil corromper accidentalmente la pila del sistema al manipular la pila de la tarea, lo que mejora la robustez del sistema.

    - *`Gestión segura de interrupciones:`* Los punteros sombreados facilitan la gestión de interrupciones y eventos asincrónicos. Cuando se produce una interrupción, el hardware suele cambiar automáticamente del PSP al MSP para garantizar que se tenga acceso a una pila limpia y segura. Esto evita problemas potenciales si la tarea actual estaba en medio de operaciones críticas en la pila de proceso.

    - *`*Ahorro de tiempo y recursos:`* El uso de punteros sombreados simplifica el código de cambio de contexto en aplicaciones multitarea. En lugar de tener que mover y restaurar manualmente registros de pila y otros contextos, los punteros sombreados permiten un cambio de contexto más eficiente y rápido.

    - *`Flexibilidad en el diseño:`* Los punteros sombreados ofrecen flexibilidad al diseñador para administrar la memoria y el contexto de ejecución de manera más eficiente, permitiendo un mejor ajuste a los requisitos específicos de la aplicación.
