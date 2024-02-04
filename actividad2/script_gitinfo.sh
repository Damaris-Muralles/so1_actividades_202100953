#!/usr/bin/env bash

# verificar si la variable de entorno GITHUB_USER esta definida, si no esta definida, la crea
if [ -z "$GITHUB_USER" ]; then
  # esta seria la forma de definir la variable de entorno de forma temporal cada vez que se ejecute el script de forma manual:

    #echo "La variable de entorno GITHUB_USER no esta definida"
    #echo "Por favor ingrese el nombre de usuario de github"
    #read -r user_input
  # Definiendo la variable de entorno GITHUB_USER de forma temporal Damaris-Muralles
    #export GITHUB_USER="$user_input"

  # si se usa un cronjob, se puede definir la variable de entorno de forma permanente en el archivo .bashrc ya que no hay interaccion con el usuario
    # para eso se ejecuta el comando:  echo "export GITHUB_USER='Damaris-Muralles'" >> ~/.bashrc
  # o podemos definir la variable de forma temporal de forma directa en el script:
    export GITHUB_USER="Damaris-Muralles"
fi


# Leer la variable de entorno GITHUB_USER
user_github="$GITHUB_USER"


# Consultar la api de github para obtener la informacion del usuario
response=$(curl -s "https://api.github.com/users/$user_github")

# Extrar la informacion del usuario del json, el id y el created_at
id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

# Imprimir el mensaje con la informacion del usuario
mensaje="Hola $user_github. User ID: $id. Cuenta fue creada el: $created_at."
echo "$mensaje"

# Crear el directorio de logs si no existe
logs_dir="/tmp/$(date +%d%m%Y)"
mkdir -p "$logs_dir"


# Crear el archivo de log con el mensaje usando redireccionamiento
echo "$mensaje" >> "$logs_dir/saludos.log"



# ========================= CRONTAB =========================
# Crear un crontab para que el script se ejecute cada 5 minutos lo configuramos de la siguiente manera:
# ejecutar el comando crontab -e y agregar la siguiente linea al final del archivo

# */5 * * * * /home/usuario/Escritorio/PROYECTOS/Sopes1/so1_actividades_202100953/actividad2/script_gitinfo.sh

# ========================= EXPICACION DE FUNCIONAMIENTO DEL SCRIPT =========================

# Para ejecutar el script se debe dar permisos de ejecucion con el comando chmod 750 script_gitinfo.sh
# Si la variable de entorno GITHUB_USER no esta definida, se pedira que se ingrese el nombre de usuario de github
# Luego se creara el archivo de log en la ruta /tmp/<fecha de ejecucion del script> con el nombre de saludos.log 
# El archivo de log contendra el mensaje con la informacion del usuario de github y este se ira actualizando cada 5 minutos debido al crontab que se configuro

# ==========================================================================================
