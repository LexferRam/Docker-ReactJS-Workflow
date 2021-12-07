# docker construye la imagen basado capas(layers) y cachea el resultado de cada layer

FROM node
WORKDIR /app
#como el package.json no cambia a menudo se cachea este resultado
COPY package.json .
RUN yarn install
COPY . . 
EXPOSE 3000  
CMD ["yarn","start"]                   

# docker exec -it reactapp bash
# cd (para cambiar de carpeta)
# cat App.js (para ver el contenido de un archivo)
