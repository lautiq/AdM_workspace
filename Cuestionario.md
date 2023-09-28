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

## Pregunta N° 6
Describa los diferentes modos de privilegio y operación del Cortex M, sus relaciones y
como se conmuta de uno al otro. Describa un ejemplo en el que se pasa del modo
privilegiado a no priviligiado y nuevamente a privilegiado.

## Respuesta N° 6

El Cortex-M de ARM utiliza modos de privilegio y operación para controlar el acceso a recursos y funciones específicas del procesador. Estos modos ayudan a garantizar la seguridad y el aislamiento entre aplicaciones y el sistema operativo en sistemas embebidos. A continuación, se describen los principales modos de operación y sus relaciones en un Cortex-M:

- *`Modo Thread (Privilegiado):`* También conocido como modo principal, es el modo en el que se ejecuta el código de aplicación principal. En este modo, se tiene acceso completo a todas las instrucciones y recursos del procesador.

- *`Modo Handler (Privilegiado):`* Este modo se utiliza para manejar interrupciones y excepciones. Hay varios modos de Handler, uno para cada tipo de interrupción o excepción (por ejemplo, SVC, PendSV, SysTick, etc.). En estos modos, el código de manejo de interrupciones se ejecuta con privilegios completos.

- *`Modo User (No Privilegiado):`* Este modo se utiliza para la ejecución de aplicaciones de usuario. En el modo de usuario, se restringe el acceso a ciertas instrucciones y registros especiales, lo que limita la capacidad de modificar el sistema y proporciona aislamiento.

El cambio entre modos de privilegio se realiza mediante instrucciones especiales de excepción, como SVC (Supervisor Call) o eventos de interrupción (por ejemplo, interrupciones de hardware). Cuando ocurre un cambio de modo, el procesador almacena automáticamente el estado actual, incluyendo registros, en una pila apropiada (generalmente la pila de procesos, PSP, o la pila de excepciones, MSP) y carga el estado del nuevo modo. Cuando se completa la ejecución en el nuevo modo, el procesador puede restaurar el estado previo desde la pila y continuar la ejecución en el modo anterior.


### Ejemplo:

Supongamos que estamos en el modo de privilegio no privilegiado (thread/User Mode) y se produce una interrupción. La secuencia típica sería la siguiente:

1. El procesador está en modo no privilegiado (Thread/User Mode) ejecutando código de aplicación normal.
2. Se produce una interrupción, como una interrupción de temporizador.
3. El procesador reconoce la interrupción y automáticamente guarda el contexto actual (registros importantes) en la pila de la tarea actual.
4. El procesador cambia al Modo de Privilegio Privilegiado (Handler/Privileged Mode) y comienza a ejecutar la rutina de manejo de interrupciones desde una dirección específica de memoria.
5. La rutina de manejo de interrupciones se ejecuta en modo privilegiado, realiza las operaciones necesarias y, cuando se completa, se restaura el contexto guardado en la pila de la tarea actual.
6. Después de completar la rutina de manejo de interrupciones, el procesador vuelve al Modo de Privilegio No Privilegiado (Thread/User Mode) y reanuda la ejecución del código de la aplicación normal donde se interrumpió.


Sería la forma en la cual se produce una conmutación de modo de privilegio a través de una interrupción y cómo el procesador vuelve al modo no privilegiado una vez que se completa la rutina de manejo de interrupciones. La capacidad de cambiar de manera controlada entre estos modos es fundamental para la gestión de eventos y la ejecución de tareas en sistemas embebidos de tiempo real. 

## Pregunta N° 7
¿Qué se entiende por modelo de registros ortogonal? Dé un ejemplo

## Respuesta N° 7

Se refiere a un diseño de arquitectura en el cual los registros son utilizados de manera uniforme y consistente, esto significa que los registros pueden ser usados indistintamente para una variedad de propósitos. Es decir, en un modelo de registros ortogonal, no hay restricciones que limiten el uso de un registro específico para ciertas operaciones o tipos de datos. Esto brinda flexibilidad y eficiencia en el uso de registros y forma de programación. 

El uso de registros generales para operaciones de datos y cálculos, independientemente de si son instrucciones de carga/almacenamiento, aritméticas o lógicas. En un procesador con un modelo de registros ortogonal, los registros se utilizan de manera coherente en diversas situaciones. Por ejemplo: 


Supongamos que tenemos los siguientes registros de propósito general $t0, $t1 y $t2. Estos registros se pueden utilizar de manera intercambiable para realizar diversas operaciones. 

```c
add $t0, $t1, $t2    # Sumar el contenido de $t1 y $t2 y almacenar el resultado en $t0
sub $t2, $t2, $t1    # Restar el contenido de $t1 de $t2 y almacenar el resultado en $t2
```
En este ejemplo, los registros $t0, $t1 y $t2 se utilizan de manera intercambiable para realizar operaciones de suma y resta. No hay restricciones especiales sobre cuál registro se debe usar para qué tipo de operación. Esto brinda al programador una mayor flexibilidad para organizar y optimizar el código según sus necesidades.


## Pregunta N° 8
¿Qué ventajas presenta el uso de intrucciones de ejecución condicional (IT)? Dé un ejemplo

## Respuesta N° 8

Estas instrucciones permiten ejecutar condicionalmente un bloque de instrucciones en función de una condición específica, lo que puede llevar a varias ventajas: 

1. Ahorro de espacio de código.
2. Mejora en la ejecución del código.
3. Reducción de errores. 

Un ejemplo: 

```c

CMP R0, #0          ; Comparar el valor en R0 con cero
ITE EQ              ; Si es igual (Equal), entonces
    ADD R1, R1, #1  ;     Sumar 1 a R1
    SUB R2, R2, #1  ;     Restar 1 de R2

```

Se compara el valor en el registro R0 con cero. Si son iguales (`equal` se cumple), entonces se ejecutarán las dos instrucciones siguientes, que suman 1 al registro R1 y restan 1 al registro R2. Si la condición no se cumple, se omiten las instrucciones. 

## Pregunta N° 9
Describa brevemente las excepciones más prioritarias (reset, NMI, Hardfault).

## Respuesta N° 9

- *`Reset:`*
    - Esta es la excepción de mayor prioridad.
    - Se produce cuando el microcontrolador se enciende o se reinicia.
    - Al activarse esta excepción, el microcontrolador carga la dirección de inicio predeterminada (vector de reset) y comienza la ejecución desde ese punto.

- *`NMI (Non-Maskable Interrupt):`*
    - Tiene una prioridad alta, pero es menor que la del reset.
    - Es una excepción que no se puede deshabilitar ni enmascarar mediante la configuración de las interrupciones.
    - Se utiliza para situaciones críticas y eventos que requieren una respuesta inmediata, como problemas de seguridad o fallas en el sistema.

- *`Hard Fault`*:

    - Esta es otra excepción de alta prioridad.
    - Se produce cuando ocurre una situación excepcional o un error grave en el código, como una violación de acceso a memoria o una instrucción no válida.
    - En muchos casos, el Hard Fault indica problemas en el software o en la configuración del sistema.
    - Puede ser útil para depurar problemas difíciles en el código o el hardware del microcontrolador.

Se consideran prioritarias porque pueden interrumpir el funcionamiento normal del microcontrolador y suelen estar relacionadas con situaciones críticas o condiciones anómalas. 

## Pregunta N° 10
Describa las funciones principales de la pila. ¿Cómo resuelve la arquitectura el llamado a funciones y su retorno?

## Respuesta N° 10


La pila es una estructura de datos fundamental en la programación y en la arquitectura de microcontroladores. Cumple funciones escenciales, especialmente cuando se trata del llamado a funciones y su retorno. Sus funciones principales son:

1. *`Almacenamiento temporal: `* Se utiliza la pila para almacenar de manera temporal datos y registros importantes durante la ejecución del programa. Incluyendo la preservación de registros antes de realizar llamadas a funciones para que se puedan restaurar despues de que la funcion retorne. 

2. *`Gestión de llamdas a funciones: `* Cuando se llama a una funcion, la dirección de retorno y otros valores necesarios como parámetros y registros importantes, se almacenan en la pila. Esto permite a la funcion su ejecución y que luego pueda regresar al punto de llamada cuando termine.

3. *`Anidamiento de llamadas: `* Cuando una función llama a otra función, la dirección de retorno y los registros de la función actual se almacenan en la pila, eso permite que se realice otra llamada antes de que la función actual haya terminado. 

4. *`Almacenamiento de variables locales: `* Podemos guardar las variables locales de una función en la pila, eso asegura que las variables locales estén disponibles solo dentro del contexto de la función y se liberen automáticamente cuando la función regresa. 

Resolución del llamado a funciones y su retorno:

ARM Cortex-M, utiliza la pila para resolver el llamado a funciones y su retorno de la siguiente manera: 


- *`Llamado a funciones (Call):`* Cuando se llama a una función, se almacena la dirección de retorno actual en la pila junto con cualquier parámetro necesario. Luego, se cambia la ejecución al inicio de la función llamada. La pila se utiliza para mantener un historial de llamadas, de modo que se pueden anidar múltiples llamadas a funciones.

- *`Retorno de funciones (Return):`* Cuando una función completa su ejecución, utiliza la dirección de retorno almacenada en la pila para regresar al punto de llamada original. La dirección de retorno se carga desde la pila y la pila se "desenrolla" para eliminar los datos relacionados con la función que está terminando. Esto permite que el programa continúe desde donde se dejó antes de la llamada a la función.

La gestión adecuada de la pila es crucial para evitar errores de desbordamiento o subdesbordamiento de pila, que pueden llevar a un comportamiento impredecible o incluso al bloqueo del programa.


## Pregunta N° 11
Describa la secuencia de reset del microprocesador.

## Respuesta N° 11

La secuencia de reset es un proceso crítico que ocurre cuando el micro se inicia o se reinicia para llevarlo a un estado conocido y prepararlo para la ejecución de su código. La secuencia es la siguiente:

1. *`Alimentación o reinicio:`* La secuencia de reset comienza cuando se aplica energía al microprocesador o cuando se activa un reinicio. Esto puede ser resultado de encender un dispositivo, presionar un botón de reinicio, o debido a una condición específica del sistema que requiere un reinicio.

2. *`Inicialización del hardware:`* Cuando se aplica energía o se activa un reinicio, el hardware interno del microprocesador comienza a inicializarse. Esto puede incluir la configuración de registros y periféricos internos, la activación de relojes y la preparación de los buses de datos y dirección.

3. *`Estado de reset:`* En este punto, el microprocesador se encuentra en un estado de reset. En este estado, generalmente, la mayoría de los registros y periféricos internos están en un estado conocido y predeterminado, y la CPU se encuentra en una dirección de inicio predeterminada o vector de reset.

4. *`Vector de reset:`* El vector de reset es una dirección de memoria específica donde se espera que comience la ejecución del programa después de un reset. Esta dirección es conocida y configurada previamente y generalmente apunta a una ubicación en la memoria flash o ROM donde se encuentra el código de inicio del sistema.

5. *`Ejecución del código de inicio:`* Una vez que el microprocesador ha completado la inicialización del hardware y se encuentra en el vector de reset, comienza la ejecución del código de inicio. Este código es responsable de configurar aún más el sistema, inicializar registros, configurar la pila y realizar otras tareas necesarias para preparar el microprocesador para la ejecución del programa principal.

6. *`Inicialización de la pila:`* La pila se inicializa generalmente en este punto, configurando el puntero de pila (stack pointer) para que apunte a una ubicación válida en memoria. Esto permite que el programa utilice la pila para gestionar las llamadas a funciones y las interrupciones de manera adecuada.

7. *`Inicio del programa principal:`* Una vez que se ha completado la inicialización del sistema y se ha configurado la pila, se inicia la ejecución del programa principal. El programa principal es la aplicación o el software específico que realiza las tareas deseadas en el microprocesador.

## Pregunta N° 12
¿Qué entiende por “core peripherals”? ¿Qué diferencia existe entre estos y el resto de
los periféricos?

## Respuesta N° 12

- *`Core Peripherals`*: Se refiere al conjunto de periféricos integrados directamente en el núcleo del microcontrolador o microprocesador. Estos son esenciales para su funcionamiento y son accesibles y controlables desde el nucleo de procesamiento central sin necesidad de componentes externos adicionales.

caracteristicas: 
1. Integración en el núcleo.
2. Control central
3. Funciones esenciales: temporizadores, interrupciones, GPIOS controllers, registros de estados, etc. 
4. Independencia de la aplicación.

- *`Peripherals`* : Se utilizan para proporcionar capacidades adicionales para aplicaciones. A diferencia de los anteriores, estos pueden variar considerablemente de un dispositivo a otro en una misma familia, y pueden incluir módulos como UART, SPI, I2C, ADC, PWM, entre otros.

Diferencias: Importancia y ubicación. Los core-peripherals son esenciales para el funcionamiento básico del micro, mientras que los peripherals son módulos opcionales, que varíaran dependiendo de la aplicacion y sus necesidades. 