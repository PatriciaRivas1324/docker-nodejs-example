# Imagen base
FROM node:18

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY package*.json ./
RUN npm install

COPY . .

# Puerto a exponer
EXPOSE 3000

# Comando por defecto
CMD ["npm", "start"]
