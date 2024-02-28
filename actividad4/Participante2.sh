#! /usr/bin/env bash

while true; 
do
    # Leer mensaje del otro participante
    mensaje=$(cat chat1_a_chat2)

    # Imprimir mensaje del otro participante
    echo "Participante 1: $mensaje" 

    #leer entrada
    read -p "Participante 2: " respuesta

    # Enviar mensaje al otro participante
    echo "$respuesta" > chat2_a_chat1 
done