# docker construye la imagen basado capas(layers) y cachea el resultado de cada layer

# FROM node:alpine
# WORKDIR /app
# #como el package.json no cambia a menudo se cachea este resultado
# COPY package.json .
# RUN yarn install
# COPY . . 
# EXPOSE 3000  
# CMD ["yarn","start"]                   

# VER EL CONTENIDO DE UN CONTENEDOR
# docker exec -it reactapp bash  || docker exec -it reactapp /bin/sh
# cd (para cambiar de carpeta)
# cat App.js (para ver el contenido de un archivo)

#VOLUMES WINDOWS ==> -v %cd%\src:/app
#VOLUMES LINUX ==> -v $(pwd)/src:/app

#ENV para que funcione vlomunes en window ===> -e CHOKIDAR_USEPOLLING=true





FROM node:14-alpine AS development
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .
COPY yarn.lock .
RUN yarn install
# Copy app files
COPY . .
# Expose port
EXPOSE 3000
# Start the app
CMD [ "yarn", "start" ]


#para llamar el .env en el "docker run ..."
#--env-file ./.env
# EJMPLO DE DOCKER RUN::: docker run --env-file ./.env -v $(pwd):/app -d -p 3001:3000 --name reactapp reactapp