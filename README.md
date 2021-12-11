# Iniciar el proyecto con docker compose

## Docker compose en desarrollo

docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d --build

docker-compose -f docker-compose.yml -f docker-compose-dev.yml down

**el tag -t significa "file" para que apunte a un dockerfile espeficifico**

## Docker compose en produccion

docker-compose -f docker-compose.yml -f docker-compose-prod.yml up -d --build

docker-compose -f docker-compose.yml -f docker-compose-prod.yml down


## DEFINITIONS

1. **Docker** es un proyecto de código abierto que automatiza el despliegue de aplicaciones dentro de contenedores de software, proporcionando una capa adicional de abstracción y automatización de virtualización de aplicaciones en múltiples sistemas operativos.​ 

2. **Dockerfile**: is a text file that contains the instructions needed to create a new container image.a cada instruccion del dockerfile se le llama "layer" o capa, y cada vez que se inicia un FROM se le llama un stage los cuales se le deben asignar un alias con "as"

3. **Image**: Una imagen de docker empaqueta la aplicacion y el entorno requerido por la aplicacion para ejecutarse.yml

4. **Contenedor**: es una instancia en ejecucion de la immagen
