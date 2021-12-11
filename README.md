# Iniciar el proyecto con docker compose

## Docker compose en desarrollo

docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d --build
docker-compose -f docker-compose.yml -f docker-compose-dev.yml down

**el tag -t significa "file" para que apunte a un dockerfile espeficifico**

## Docker compose en produccion

docker-compose -f docker-compose.yml -f docker-compose-prod.yml up -d --build
docker-compose -f docker-compose.yml -f docker-compose-prod.yml down
