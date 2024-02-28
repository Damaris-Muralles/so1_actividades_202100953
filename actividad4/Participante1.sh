#! /usr/bin/env bash

while true;
do
    #leer entrada
    read -p "Participante 1: " mensaje

    # Enviar mensaje al otro participante
    echo "$mensaje" > chat1_a_chat2

    # Leer mensaje del otro participante
    respuesta=$(cat chat2_a_chat1)

    # Imprimir mensaje del otro participante
    echo "Participante 2: $respuesta" 
done