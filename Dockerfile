# Use uma imagem base do Node.js
FROM node:14

# Define o diretório de trabalho
WORKDIR /usr/src/app

# Copia os arquivos de configuração do npm
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia os arquivos da aplicação
COPY . .

# Expõe a porta que a aplicação irá usar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
