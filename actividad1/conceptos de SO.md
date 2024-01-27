## Tipos de Kernel y sus diferencias

  

Los sistemas operativos pueden tener diferentes tipos de kernels, que son el núcleo del sistema operativo encargado de administrar los recursos del sistema y proporcionar una interfaz entre el hardware y el software. Los tipos principales de kernels son:

|Tipo de Kernel  | Descripción |Ventajas|Desventajas|Ejemplos|
|--|--|--|--|--|
|Monolítico|Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware|Acceso directo y sin restricciones a los recursos del sistema|Un error puede causar la caída del sistema|Linux|
|Microkernel|El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos.|Mayor seguridad y aislamiento|Mayor overhead debido a la comunicación entre el microkernel y los servicios del usuario|Minix|
|Híbrido|La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente|Flexibilidad y eficiencia|Mayor complejidad|Microsoft Windows NT|


## User vs Kernel Mode

  

El modo usuario (User Mode) y el modo kernel (Kernel Mode) son dos niveles distintos de privilegios que tienen los procesos en un sistema operativo:

|Criterios  | User Mode |Kernel Mode|
|--|--|--|
|Acceso a Recursos|No tiene acceso directo a los recursos del sistema. Debe hacer una llamada al sistema|Tiene acceso directo y sin restricciones a los recursos del sistema|
|Interrupciones|	Si ocurre una interrupción, sólo falla un solo proceso|Si ocurre una interrupción, todo el sistema operativo podría fallar|
|Espacio de Direcciones Virtuales|Todos los procesos obtienen un espacio de direcciones virtuales separado|Todos los procesos comparten un solo espacio de direcciones virtuales|
|Nivel de Privilegio|Las aplicaciones tienen menos privilegios|Las aplicaciones tienen más privilegios|
## Interruptions vs Traps

  

Las interrupciones (Interrupts) y las trampas (Traps) son mecanismos utilizados por el hardware y el software para cambiar el flujo de ejecución de un programa:

  

- Interrupciones:

  

Son señales generadas por el hardware externo o interno que indican que se necesita atención del sistema operativo.

Pueden ser síncronas (generadas por el hardware en respuesta a eventos externos) o asíncronas (generadas por el hardware en respuesta a eventos internos).

Las interrupciones pueden ser enmascarables o no enmascarables, dependiendo de si pueden ser ignoradas temporalmente.

- Trampas:

  

Son eventos generados por el software, como errores de programación o solicitudes de servicio del sistema operativo.

Las trampas son síncronas y se generan cuando un programa ejecuta una instrucción que requiere la intervención del sistema operativo.

Se utilizan para cambiar el control del procesador al sistema operativo para manejar la solicitud o el error.