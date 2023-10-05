FROM node:18.17 as development
WORKDIR /usr/src/app
COPY package*.json tsconfig.json ./
RUN npm install
COPY ./src ./src
CMD [ "npm", "run", "start:dev" ]


# Usa una imagen base de Node.js
#FROM node:14

# Establece el directorio de trabajo dentro del contenedor
#WORKDIR /app

# Copia el archivo package.json y package-lock.json al directorio de trabajo
#COPY package*.json ./

# Instala las dependencias del proyecto
#RUN npm install

#COPY . .
# Copia la carpeta "src" junto con los archivos fuente al directorio de trabajo
#COPY src/ ./src/

# Expone el puerto en el que se ejecuta tu aplicación Node.js
#EXPOSE 3055

# Comando para iniciar la aplicación
#CMD [ "npm", "run", "start" ]
