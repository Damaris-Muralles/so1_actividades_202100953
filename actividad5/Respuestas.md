# PROCESOS E HILOS

### 1. ¿Cuántos porcesos únicos son creados?

Son creados 6 procesos unicos. 

Esto se debe a que al ejecutgar el programa ya tenemos un proceso inicial luego este se bifurca tres veces y crea como resultado tres porcesos secundarios.

luego estos tres procesos secundarios se vuelven a bifurcar una vez exceptauando el tercer proceso hijo, al sumar todo esto y contando el proceso inicial tenemos un total de seis procesos.


### 2. ¿Cuántos hilos únicos son creados?

Solo se creo un hilo unico.

Esto es por que pthread_create() solo se llama una vez.


