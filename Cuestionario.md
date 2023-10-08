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

## Pregunta N° 13
¿Cómo se implementan las prioridades de las interrupciones? Dé un ejemplo

## Respuesta N° 13

En los microcontroladores basados en la arquitectura ARM cortex-M existe una parte fundamental que es el NVIC (Nested Vectored Interrupt Controller) o controlador de interrupciones, a través de este se realiza la implementacion de las prioridades de una interrupción.

Implementación de prioridades de interrupción: 

1. *`Asignacion de prioridades: `* Cada interrupción se asocia con un número de prioridad. Las interrupciones de menor valor son mas prioritarias. Por ejemplo, una interrupcion de un temporizador crítica podría tener prioridad cero mientras que una interrupcion de un pulsador podría tener una mas alta como 3. 

2. *`Máscara de prioridades: `* El NVIC permite configurar una mascara de prioridades que determina que interrupciones pueden interrumplir a otras. Es decir, incluso si dos interrupciones tienen distintas prioridades, una de mayor prioridad podría no activarse si esta enmascarada dentro de una menor prioridad. 

3. *`Vector de interrupcion: `* Para cada interrupción, hay una dirección específica de memoria, la cual contiene la dirección de inicio de la rutina de manejo de dicha interrupción. Las direcciones y números de prioridad se almacenan en una tabla llamada "Vector de interrupción", que el controlador de interrupciones usa para enrutar la ejecución ante una interrupción. 


Ejemplo de implementación.

Supongamos que tenemos un cortex-M y se configuran dos interrupciones. Un temporizador (baja prioridad) y un pulsador (alta prioridad).

Asignación de prioridades: 
    - Temporizador: Prioridad 3 (baja prioridad)
    - Pulsador: Prioridad 1 (alta prioridad)

Máscara de prioridades: 
    - Podemos configurar una máscara que permita que la interrupción del pulsador (prioridad 1) interrumpa al temporizador (prioridad 3), pero no al revés. 

Vector de interrupción:
    - La dirección de inicio de la rutina de manejo del temporizador se almacena en el vector de interrupción asociado a la interrupción del temporizador.
    - La dirección de inicio de la rutina de manejo del pulsador se almacena en el vector de interrupción asociado a la interrupción del pulsador.

Cuando ocurra una interrupción, el NVIC consulta la máscara de prioridades y los vectores de interrupción para ver si tiene que atenderla o no. En este ejemplo, si se pulsa el botón, se interrumpirá la ejecución actual y ejecutará la rutina de manejo del pulsador. Sin embargo, si ocurre una interrupción del temporizador al mismo tiempo, esta no se atenderá ya que tendrá que esperar que termine el manejo del pulsador por las prioridades y máscaras.

## Pregunta N° 14
¿Qué es el CMSIS? ¿Qué función cumple? ¿Quién lo provee? ¿Qué ventajas aporta?

## Respuesta N° 14

`CMSIS` --> Cortex Microcontroller Software Interface Standar. 

Es un estandar desarrollado por ARM para brindar una interfaz común y coherente para desarrolladores de software que trabajan con microcontroladores basados en ARM Cortex-M. 

Propósito: 
Facilitar el desarrollo de software embebido para microcontroladores Cortex-M proporcionando una capa de abstracción que estandariza aspectos escenciales del hardware y de su entorno de desarrollo. 

Funciones:

1. *`Abstracción de hadware: `*  Permite acceder de manera consistente a los recursos del micro, como registros, périfericos y funciones específicas de la CPU, independientemente del fabricante o modelo. 

2. *`Gestion de las interrupciones: `* CMSIS define un conjunto de funciones y macros para configurar y manejar las interrupciones.

3. *`Control de energía: `* Proporciona funciones para administrar y controlar modos de bajo consumo del microcontrolador.

4. *`Funciones matemáticas:  `* Ofrece funciones matemáticas, como funciones trigonométricas y operaciones de punto flotante.

5. *`Depuración :`* Incluye características para el depurador, como definiciones de registros y macros para manipular registros especiales en tiempo de ejecución.

Proveedor: 
Es desarrollado y mantenido por ARM holdings. ARM proporciona especificaciones, documentación y bibliotecas CMSIS de manera gratuita para los fabricantes de microcontroladores y la comunidad de desarrolladores. 

Ventajas: 

1. *`Portabilidad:`* Permite escribir código portátil que puede ejecutarse en una variedad de microcontroladores Cortex-M de diferentes fabricantes sin modificar significativamente el código fuente.

2. *`Eficiencia:`* Proporciona funciones optimizadas y macros que permiten un mejor rendimiento y un uso eficiente de los recursos del microcontrolador.

3. *`Facilidad de Desarrollo:*` Simplifica el desarrollo de software al proporcionar una interfaz coherente y abstracción de hardware, lo que acelera el proceso de desarrollo.

4. *`Compatibilidad de Herramientas:`* CMSIS se integra con numerosas herramientas de desarrollo, como compiladores, depuradores y entornos de desarrollo integrados (IDE), lo que facilita la configuración y la depuración.

## Pregunta N° 15
Cuando ocurre una interrupción, asumiendo que está habilitada ¿Cómo opera el microprocesador para atender a la subrutina correspondiente? Explique con un ejemplo

## Respuesta N° 15

Primero el hardware del microprocesador es quien detecta que se produjo una interrupción. Esto puede ser el resultado de una señal de hardware, como un temporizador que alcanza un valor específico o la pulsación de un botón. Luego, antes de pasar a la rutina de manejo de la interrupción, el micro suele guardar el estado actual del CPU, como el contenido de los registros y la dirección de retorno. Esto se hace para que, despues de manejar la interrupción, la CPU pueda restaurar su estado y continuar la ejecución normal del programa.
A menudo, el microprocesador desactiva temporalmente las interrupciones para evitar que ocurran interrupciones adicionales mientras se maneja la actual, esto evita que la rutina de manejo sea interrumpida. Ahora el microprocesador busca en la tabla de vectores de interrupciones la dirección de inicio de la rutina de manejo de la interrupción correspondiente. Cada interrupción tiene su propia entrada en la tabla de vectores con la dirección de inicio adecuada. 
La CPU salta a la dirección de inicio de la rutina de manejo de la interrupción y comienza a ejecutar el código específico para dicha interrupción. Luego de completar la rutina de manejo de la interrupción, el microprocesador restaura el estado que se guardo previamente, incluido los registros y dirección de retorno. Ahora se reactivan las interrupciones permitiendo que se procesen interrupciones adicionales.

EJEMPLO:

Supongamos que tenemos un temporizador que se activa cada un segundo, cuando esto ocurra el micro hará lo siguiente:
1. Detecta que el temporizador alcanzo el valor programado, genera la interrupción.
2. Guarda el estado de la CPU actual.
3. Desactiva las interrupciones adicionales.
4. Busca en la tabla de vectores de interrupción la dirección de inicio de la rutina de manejo del temporizador.
5. salta a la dirección de incio de la rutina y comienza a ejecutar el código de manejo del temporizador, que podría ser, por ejemplo, actualizar una variable global que cuenta los segundos transcurridos. 
6. Finalizada la rutina de manejo, restaura el estado guardado en el punto 2.
7. Reactiva las interrupciones.


## Pregunta N° 16
Explique las características avanzadas de atención a interrupciones: tail chaining y late arrival.

## Respuesta N° 16

Las características avanzadas de atención a interrupciones conocidas como `Tail Chaining` (encadenamiento de cola) y `Late Arrival` (llegada tardía) son técnicas que mejoran la eficiencia y el rendimiento del manejo de interrupciones. 

Características:

- *`Tail Chaining (Encadenamiento de Cola): `*

    - Qué es? Es una técnica que permite al microcontrolador continuar de manera eficiente con el manejo de múltiples interrupciones pendientes de la misma prioridad sin la necesidad de volver a habilitar las interrupciones entre cada una de ellas.

    - Cómo? Cuando ocurre una interrupción y se está manejando, si hay otras interrupciones de la misma prioridad pendientes en la cola, el microcontrolador puede automáticamente pasar a manejar la siguiente interrupción en la cola después de completar la primera, sin necesidad de reactivar las interrupciones. Esto reduce la latencia y el tiempo de procesamiento total.

    - Ventajas: En situaciones donde hay múltiples interrupciones de alta prioridad que deben manejarse en rápida sucesión permite un flujo de manejo de interrupciones más suave y eficiente.

- *`Late Arrival (Llegada Tardía): `*

    - Qué es? Permite que una interrupción que ocurre durante el manejo de otra interrupción de la misma prioridad pueda ser atendida después de completar la interrupción actual.

    - Cómo? Si una interrupción de igual o mayor prioridad se produce mientras se maneja una interrupción actual, el microcontrolador completa la interrupción actual antes de atender la nueva interrupción. Sin embargo, con el Late Arrival habilitado, si la nueva interrupción tiene la misma prioridad, se encola y se atiende después de completar la actual.

    - Ventajas: El Late Arrival puede ser útil en situaciones en las que se desea garantizar que todas las interrupciones de igual prioridad se atiendan en orden de llegada, incluso si ocurren durante el manejo de otras interrupciones. Esto puede ayudar a mantener una gestión de interrupciones más justa y predecible.

Estas características mejoran la eficiencia y la capacidad de respuesta de los sistemas embebidos en entornos donde las interrupciones son críticas y ocurren frecuentemente.


## Pregunta N° 17
¿Cómo cambia la operación de stacking al utilizar la unidad de punto flotante?

## Respuesta N° 17

 La operación de stacking cambia al utilizar la unidad de punto flotante en un microcontrolador Cortex-M debido a la necesidad de manejar los registros de punto flotante adicionales y garantizar su integridad durante las llamadas a funciones y las rutinas de manejo de interrupciones. El uso adecuado de instrucciones de carga/guarda de punto flotante, el cumplimiento de reglas de llamadas a funciones y la consideración de la alineación de la pila son aspectos clave para gestionar de manera efectiva los registros de punto flotante en estos sistemas.


Descripción de los cambios en la operación de stacking cuando se utiliza la FPU:

1. *`Registro de Status (PSR):`* El registro de estado (PSR) almacena información sobre las banderas de condición, el modo de procesamiento, la habilitación de interrupciones, entre otros. Cuando se utiliza la FPU, el PSR se divide en dos partes: el PSR principal (IPSRR) y el PSR de punto flotante (FPSR). El apilamiento debe tener en cuenta esta separación para asegurar la consistencia durante las operaciones de cambio de contexto.

2. *`Registros de Punto Flotante (S registros):`*  La FPU agrega un conjunto de registros de punto flotante llamados registros "S" ("Single Precision"). Se utilizan para almacenar valores de punto flotante de precisión simple (por ejemplo, números de punto flotante de 32 bits). Durante el stacking, es necesario apilar y desapilar estos registros junto con los registros de enteros.

3. *`Instrucciones de Carga/Guarda de Punto Flotante:`* El conjunto de instrucciones del procesador incluye instrucciones específicas para cargar y guardar valores desde/hacia los registros de punto flotante hacia y desde la memoria. Estas instrucciones deben ser utilizadas adecuadamente para garantizar que los valores de punto flotante se manejen correctamente durante el stacking.

4. *`Alineación de Pila:`* Para asegurar un acceso eficiente y sin errores a los registros de punto flotante, es importante que la pila esté alineada adecuadamente para que los datos de punto flotante se almacenen y restauren correctamente.

5. *`Reglas de Llamadas a Funciones e Interrupciones:`* Durante una llamada a función o una rutina de manejo de interrupción, se deben seguir reglas específicas para almacenar y restaurar los registros de punto flotante según el estándar establecido por el ABI (Application Binary Interface) utilizado en el sistema. Esto garantiza la coherencia en la gestión de los registros de punto flotante en todo el código.

## Pregunta N° 18
¿Qué es el systick? ¿Por qué puede afirmarse que su implementación favorece la portabilidad de los sistemas operativos embebidos?

## Respuesta N° 18

`Systick: ` Es un temporizador o contador de sistema. Su implementación favorece la portabilidad de los sistemas operativos embebidos por varias razones:



1. *`Estándar en la Arquitectura Cortex-M:`* Es una característica estándar de la arquitectura, lo que significa que se encuentra en todos los microcontroladores que utilizan esta arquitectura. Esto proporciona una interfaz consistente y predecible para el control del tiempo y la temporización en sistemas embebidos basados en Cortex-M, independientemente del fabricante del microcontrolador específico.

2. *`Interrupción de Sistema Estándar:`* El SysTick está diseñado para generar una interrupción de sistema periódica a una frecuencia configurable. Esta interrupción se utiliza comúnmente por los sistemas operativos embebidos como un "tick" o un golpe del reloj del sistema. Los sistemas operativos pueden configurar el período del SysTick para que coincida con la base de tiempo requerida para tareas como planificación de tareas, gestión de tiempos de espera y control de eventos.

3. *`Independencia del Fabricante:`* Dado que el SysTick es una característica de la arquitectura Cortex-M y no depende del fabricante del microcontrolador, los desarrolladores de sistemas embebidos pueden escribir código que funcione en una variedad de microcontroladores Cortex-M sin tener que modificarlo significativamente. Esto facilita la portabilidad del software entre diferentes plataformas.

4. *`Configuración Flexible:`* El SysTick generalmente permite la configuración flexible de su frecuencia de conteo, lo que permite adaptarlo a las necesidades específicas de temporización de una aplicación. Esto es esencial para que los sistemas operativos embebidos funcionen de manera eficiente y se ajusten a los requisitos de las aplicaciones.

5. *`Bajo Consumo de Energía:`* A pesar de su funcionalidad, el SysTick suele ser eficiente en cuanto al consumo de energía. Esto es importante en sistemas embebidos donde la gestión de la energía es crítica.

## Pregunta N° 19
¿Qué funciones cumple la unidad de protección de memoria (MPU)?

## Respuesta N° 19

Es una característica que se encuentra en algunos de los microcontroladores de arquitectura Cortex-M y cumple varias funciones relacionadas con la protección de la memoria en sistemas embebidos. A continuación, se describen las principales funciones de la MPU:

1. Protección de Memoria: Controla y restringe el acceso a áreas de memoria específicas.

2. Segmentación de Memoria: Divide la memoria en regiones para aislar datos y código críticos.

3. Protección de Pila: Previene escritura no autorizada en la pila del sistema.

4. Gestión de Permisos: Define quién puede acceder y qué tipo de acceso está permitido.

5. Prevención de Ejecución de Datos: Evita la ejecución de código en áreas de memoria no ejecutables.

6. Protección de Periféricos: Protege registros y configuraciones de controladores de periféricos.

7. Aislamiento de Tareas: Aísla regiones de memoria entre tareas o procesos en sistemas multitarea.

Basicamente, la MPU proporciona una capa adicional de seguridad y control en sistemas embebidos al permitir proteccion de memoria, control de acceso y prevención de ejecución de codigo no autorizado o malicioso. 

## Pregunta N° 20
¿Cuántas regiones pueden configurarse como máximo? ¿Qué ocurre en caso de haber solapamientos de las regiones? ¿Qué ocurre con las zonas de memoria no cubiertas por las regiones definidas?

## Respuesta N° 20

El número maximo de regiones que se pueden configurar en la MPU de un Cortex-M depende de la implementacion especifica del hardware en el microcontrolador. No existe un numero fijo, lo define el fabricante. 

Cuando se configuran regiones en la Unidad de Protección de Memoria (MPU) y hay solapamientos entre ellas, es importante comprender cómo se comporta la MPU y cómo se resuelven estos solapamientos. Aquí se describen las consideraciones clave:

1. Prioridad de Región: La MPU suele dar prioridad a las regiones con permisos más restrictivos en caso de solapamiento. En otras palabras, si dos regiones se solapan y una de ellas tiene permisos más restrictivos que la otra, los permisos más restrictivos prevalecerán.

2. Permisos de Acceso: Los permisos de acceso son importantes en la resolución de solapamientos. Si dos regiones se solapan pero tienen permisos de acceso diferentes (por ejemplo, lectura y escritura en una región y solo lectura en la otra), la MPU aplicará los permisos específicos de cada región a las direcciones correspondientes.

3. Región Más Específica: En algunos casos, si una dirección de memoria está dentro de dos regiones que se solapan, se aplicarán los permisos de la región más específica o la región con una dirección de inicio más baja.

4. Verificación por el Hardware: La resolución de solapamientos generalmente es manejada por hardware en la MPU. El hardware de la MPU verifica las direcciones de memoria en tiempo real y aplica los permisos adecuados según las reglas configuradas.

5. Configuración Cuidadosa: Para evitar problemas de solapamiento, es importante configurar las regiones de manera cuidadosa y coherente. Los desarrolladores deben considerar las necesidades específicas de la aplicación y definir las regiones de manera que no se generen conflictos no deseados.

6. Validación y Pruebas: Después de configurar las regiones, es aconsejable realizar pruebas exhaustivas para garantizar que los permisos y los solapamientos se comporten como se espera en la aplicación.

Las zonas de memoria no cubiertas por las regiones definidas en la MPU se consideran no protegidas y están disponibles para su acceso sin restricciones. La gestión adecuada de estas zonas, junto con la configuración de regiones de protección para las áreas críticas, es esencial para garantizar la seguridad y la integridad del sistema en sistemas embebidos.

## Pregunta N° 21
¿Para qué se suele utilizar la excepción PendSV? ¿Cómo se relaciona su uso con el resto de las excepciones? Dé un ejemplo

## Respuesta N° 21

La excepción PendSV (Pendable Supervisor Call) se utiliza comúnmente en sistemas embebidos basados en la arquitectura ARM Cortex-M para realizar tareas de planificación y cambio de contexto en sistemas multitarea o sistemas operativos en tiempo real. Su principal función es permitir una transición controlada de una tarea a otra con prioridades iguales o similares. A continuación, se describen las características y el uso de la excepción PendSV y su relación con otras excepciones:

Características y Uso de la Excepción PendSV:

1. *`Prioridad Fija:`* La excepción PendSV tiene la prioridad más baja de todas las excepciones en un sistema Cortex-M. Esto garantiza que sea interrumpible por cualquier otra excepción de mayor prioridad, lo que la convierte en una herramienta adecuada para realizar cambios de contexto y tareas de planificación sin ser interrumpida por interrupciones de alta prioridad.

2. *`Cambios de Contexto:`* La excepción PendSV se utiliza para realizar cambios de contexto entre tareas en sistemas multitarea. Cuando se activa, el código de la excepción PendSV guarda el estado de la tarea actual y restaura el estado de la siguiente tarea que debe ejecutarse.

3. *`Desencadenamiento Manual:`* A diferencia de otras excepciones que se generan en respuesta a eventos específicos, como interrupciones de temporizador o E/S, PendSV se desencadena manualmente. Esto permite un control preciso sobre cuándo se realizarán los cambios de contexto.

4. *`Relación con Otras Excepciones:`* La excepción PendSV se utiliza en conjunto con otras excepciones relacionadas con la planificación de tareas, como SysTick y SysTick_Handler. SysTick es un temporizador que genera interrupciones periódicas y se utiliza para realizar tareas de planificación regulares. Cuando ocurre una interrupción de SysTick, el control puede pasar a la rutina de manejo de interrupciones SysTick_Handler, que puede decidir si es necesario activar la excepción PendSV para cambiar de contexto.

 Ejemplo de Uso:

Supongamos un sistema multitarea simple con dos tareas, TareaA y TareaB, que se ejecutan en un microcontrolador Cortex-M. La tarea PendSV se utiliza para cambiar el contexto entre estas dos tareas. El flujo de trabajo puede ser el siguiente:

- Inicialmente, se ejecuta TareaA y realiza sus tareas específicas.
- Cuando TareaA decide que es el momento de ceder el control a TareaB (por ejemplo, al final de su período de tiempo o en respuesta a un evento específico), TareaA activa manualmente la excepción PendSV.
- La excepción PendSV se ejecuta, guarda el estado de TareaA y restaura el estado de TareaB.
- Ahora, TareaB toma el control y se ejecuta.
- Cuando TareaB decide ceder el control a TareaA o a otra tarea, activa nuevamente la excepción PendSV, y el proceso se repite.

En este ejemplo, PendSV se utiliza para realizar cambios de contexto entre tareas de manera controlada, lo que permite la ejecución multitarea en sistemas embebidos. El uso de PendSV se relaciona estrechamente con la planificación de tareas y puede trabajar en conjunto con otras excepciones y temporizadores para lograr una gestión eficiente de las tareas en el sistema.



# ISA

## Pregunta N°1
¿Qué son los sufijos y para qué se los utiliza? Dé un ejemplo

## Respuesta N°1

Los sufijos son caracteres que se agregan a las instrucciones para indicar el tipo de dato con el que opera dicha instrucción. Permiten especificar si una instrucción se aplica a datos enteros o de punto flotante o si de es de load o storage, etc. Ayudan entonces a definir el comportamiento exacto de uns intrucción en términos de los tipos de datos involucrados. 


- Sufijos de Tipo de Datos:


`.B:` Indica que la instrucción se aplica a datos de 8 bits (bytes).
`.H:` Indica que la instrucción se aplica a datos de 16 bits (halfwords).
`.S:` Indica que la instrucción se aplica a datos de precisión simple en punto flotante (32 bits).
`.D:` Indica que la instrucción se aplica a datos de doble precisión en punto flotante (64 bits).
Sufijos de Operación:

`.W:` Indica que la instrucción realiza una escritura a memoria.
`.R:` Indica que la instrucción realiza una lectura desde memoria.
Sufijos de Modificación de Registro:

`.X:` Indica que la instrucción afecta al registro de banderas (por ejemplo, N, Z, C, V en el caso de la arquitectura ARM).
Sufijos de Condición:

`.EQ`, `.NE`, `.GT`, `.LT`, etc.: Estos sufijos se utilizan para condicionar una instrucción según una condición específica. Por ejemplo, .EQ indica "igual", .NE indica "no igual", .GT indica "mayor que", .LT indica "menor que", etc.

    Ejemplo de Uso:

Supongamos que estamos programando en ensamblador ARM y queremos cargar un valor de 32 bits desde memoria a un registro. Podemos utilizar el sufijo .W para indicar que estamos realizando una lectura desde memoria en formato de palabra (32 bits):

```c

LDR.W R0, [R1]  ; Carga el valor de 32 bits desde la dirección en R1 a R0

``` 
.W se utiliza para especificar que se trata de una operación de lectura desde memoria de 32 bits. La instrucción LDR.W carga el valor de 32 bits desde la dirección en el registro R1 a R0.

## Pregunta N°2
¿Para qué se utiliza el sufijo ‘s’? Dé un ejemplo

## Respuesta N°2

se agrega a las instrucciones de tipo "aritmético lógico" y "comparación" para indicar que se deben actualizar las banderas condicionales (por ejemplo, las banderas N, Z, C, y V) basadas en el resultado de la operación. Si no se utiliza el sufijo 's', las banderas no se actualizan después de la ejecución de la instrucción.

Ejemplo:

```c

CMP R0, R1  ; Compara el valor en R0 con el valor en R1

```
En este caso, la instrucción CMP compara los valores en los registros R0 y R1. Sin embargo, esta instrucción no actualiza las banderas de condición. Para actualizar las banderas de condición, se agrega el sufijo 's' a la instrucción

```c

CMPS R0, R1  ; Compara el valor en R0 con el valor en R1 y actualiza las banderas

```

el sufijo 's' indica que las banderas de condición (N, Z, C, V) se actualizarán en función del resultado de la comparación. Esto permite al programador tomar decisiones basadas en las condiciones después de la comparación, como realizar saltos condicionales o tomar diferentes caminos en el flujo del programa.

## Pregunta N°3
¿Qué utilidad tiene la implementación de instrucciones de aritmética saturada? Dé un ejemplo con operaciones con datos de 8 bits.

## Respuesta N°3

La aritmética saturada evita desbordamientos numéricos al ajustar automáticamente los resultados de operaciones dentro de un rango válido. Esto es útil en aplicaciones críticas para evitar resultados incorrectos o inseguros

Por ejemplo, consideremos la suma de dos números de 8 bits que darían como resultado un valor mayor a 255 ( valor maximo para un byte de 8 bits), la aritmetica saturada asegurará que el resultado no supere ese valor:

```c

Número A = 250 (en binario: 11111010)
Número B = 10  (en binario: 00001010)


```

Sin aritmetica saturada: 

```c

Resultado = 250 + 10 = 260 (en binario: 100000100)

```

Con aritmetica saturada: El resultado se ajustaria al valor maximo posible de 8 bits: 

```c

Resultado = 255 (valor máximo de 8 bits, en binario: 11111111)

```

## Pregunta N°4
Describa brevemente la interfaz entre assembler y C ¿Cómo se reciben los argumentos de las funciones? ¿Cómo se devuelve el resultado? ¿Qué registros deben guardarse en la pila antes de ser modificados?

## Respuesta N°4

La interfaz entre el lenguaje ensamblador (assembler) y C es crucial para permitir que el código escrito en lenguaje ensamblador se comunique y trabaje en conjunto con el código escrito en C en una aplicación. Aquí hay una descripción breve de algunos aspectos clave de esta interfaz:

1. *`Pasaje de Argumentos:*` En la interfaz entre ensamblador y C, los argumentos de las funciones de C se pasan generalmente a través de registros específicos o en la pila, dependiendo de la convención de llamada utilizada en la arquitectura específica. Por ejemplo, en la arquitectura x86, los argumentos se pasan en registros como EAX, EBX, ECX, EDX, y se pueden almacenar en la pila si es necesario.

2. *`Retorno de Resultados:*` El resultado de una función escrita en lenguaje ensamblador que se llama desde C generalmente se devuelve en un registro específico o a través de la pila, nuevamente dependiendo de la convención de llamada. En la arquitectura x86, por ejemplo, el valor de retorno se coloca en el registro EAX.

3. *`Preservación de Registros:*` Antes de modificar ciertos registros, es importante preservar su contenido actual para no interferir con el código de C que llama a la función en lenguaje ensamblador. Los registros que deben guardarse en la pila antes de su modificación varían según la arquitectura y la convención de llamada utilizada. En la arquitectura x86, por ejemplo, se deben guardar los registros EBP, EBX y ESI antes de modificarlos y restaurar su valor original antes de finalizar la función.

4. *`Uso de Pila:*` La pila se utiliza comúnmente para almacenar registros que deben preservarse durante una llamada a función en lenguaje ensamblador. Los registros se empujan (push) a la pila antes de ser modificados y se sacan (pop) de la pila después de restaurar su contenido original.

5. *`Convención de Llamada:*` La elección de la convención de llamada adecuada es esencial para garantizar una comunicación adecuada entre el código en lenguaje ensamblador y el código en C. Las convenciones de llamada definen cómo se pasan los argumentos, se devuelve el resultado y se manejan los registros. Ejemplos de convenciones de llamada comunes incluyen cdecl, stdcall y fastcall en la arquitectura x86.


## Pregunta N°3

¿Qué es una instrucción SIMD? ¿En qué se aplican y que ventajas reporta su uso? Dé un ejemplo.
## Respuesta N°3

Una instrucción SIMD (Single Instruction, Multiple Data) es un tipo de instrucción en una arquitectura de computadora que permite realizar una misma operación en paralelo en múltiples elementos de datos simultáneamente.
Las ventajas clave de las instrucciones SIMD incluyen la aceleración de cálculos y el aumento del rendimiento de aplicaciones que trabajan con grandes cantidades de datos.

Características de las Instrucciones SIMD:

- Procesamiento en Paralelo: Las instrucciones SIMD permiten realizar la misma operación en varios elementos de datos al mismo tiempo. Esto se logra utilizando registros SIMD que almacenan múltiples valores de datos y ejecutando una sola instrucción que opera en todos esos valores simultáneamente.

- Reducción de Código: Al procesar varios elementos de datos con una sola instrucción, se reduce la cantidad de código necesario para realizar operaciones en series de datos. Esto ahorra tiempo de ejecución y espacio en memoria.

- Mejora del Rendimiento: Las instrucciones SIMD aceleran significativamente el procesamiento de datos, lo que se traduce en un aumento del rendimiento de las aplicaciones que requieren cálculos intensivos. Esto es especialmente beneficioso en tareas como el procesamiento de video, gráficos en 3D y análisis de datos.

Ejemplo:

Supongamos que tenemos una matriz de píxeles y queremos aplicar un filtro de promedio a cada conjunto de píxeles vecinos para suavizar la imagen.

```c

for (int i = 1; i < height - 1; i++) {
    for (int j = 1; j < width - 1; j++) {
        // Calcular el valor promedio de los píxeles vecinos y aplicarlo al píxel actual
        image[i][j] = (image[i-1][j-1] + image[i-1][j] + image[i-1][j+1] +
                       image[i][j-1]   + image[i][j]   + image[i][j+1] +
                       image[i+1][j-1] + image[i+1][j] + image[i+1][j+1]) / 9;
    }
}


```

Con SIMD, podemos realizar esta operación de suavizado en paralelo para mejorar el rendimiento:

```c

// Supongamos que tenemos una función SIMD llamada "sumar_y_dividir" que realiza la suma y la división de manera paralela
for (int i = 1; i < height - 1; i++) {
    for (int j = 1; j < width - 1; j++) {
        // Calcular el valor promedio de los píxeles vecinos y aplicarlo al píxel actual usando SIMD
        image[i][j] = sumar_y_dividir(image[i-1][j-1], image[i-1][j], image[i-1][j+1],
                                      image[i][j-1], image[i][j], image[i][j+1],
                                      image[i+1][j-1], image[i+1][j], image[i+1][j+1]);
    }
}


```
En este ejemplo, la función sumar_y_dividir utiliza instrucciones SIMD para realizar la suma y la división de manera paralela en lugar de realizar cada operación en serie. Esto acelera significativamente el proceso de suavizado de la imagen.