# Usar a imagem base do Node.js
FROM node:14

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copiar o package.json e o package-lock.json para instalar as dependências
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar o restante do código da aplicação
COPY . .

# Expor a porta 8080 para acessar a aplicação
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["node", "src/app.js"]

# criar imagem
# docker build -t my_node_app .

# executar container
# docker run -d --name my_node_app --env-file .env -p 8080:8080 my_node_app

# verificar log de execução do container
# docker logs my_node_app