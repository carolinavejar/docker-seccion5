# /app
FROM node:16.18-alpine3.16
# FROM --platform=$BUILDPLATFORM node:16.18-alpine3.16

# cd app
WORKDIR /app

# source destino
COPY  package.json ./

# instala dependencias
RUN npm install

# source destino
COPY  . .

# Realizar testing
RUN npm run test

# Eliminar archivos y disr innecesarios
# RUN rm -rf tests && node_modules
# -rf RECURSIVO && FORZADO
RUN rm -rf tests
RUN rm -rf node_modules

# Instala solo dependencias de prod
RUN npm install --prod

CMD ["node", "app.js"]