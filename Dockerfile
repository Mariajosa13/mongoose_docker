#Este archivo se utiliza para poder crear containers a partir de la aplicación.
#Aquí se escriben todas las instrucciones que necesita el contenedor

FROM node:22-alpine
# la imagen base es node
# versión 22 porque es con la que se creó el archivo 


RUN mkdir -p /home/app 
# se crea carpeta donde va a ir e código fuente, es una ruta dentro del mismo contenedor

COPY . /home/app
#se le indica la ruta de la cual se van a extraer todos los archivos

EXPOSE 3000
#Exponer el puerto para que otros contenedores o immagenes puedan conectarse

CMD ["node", "/home/app/index.js"]
# se le indica el comando a ejecutar para que la aplicación corra