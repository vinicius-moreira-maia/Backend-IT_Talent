# Imagem base
FROM node:14

# Definindo o contexto de trabalho
WORKDIR /usr/src/app

# Copiaando os packages para instalar as dependências
COPY package*.json ./

# Instalando as dependências
RUN npm install

# Copiando os demais arquivos
COPY . .

# Ecpondo a porta 8080 do container
EXPOSE 8080

# Iniciando o app
CMD ["node", "src/app.js"]

# criar imagem
# docker build -t my_node_app .

# executar container
# docker run -d --name my_node_app --env-file .env -p 8080:8080 my_node_app

# verificar log de execução do container
# docker logs my_node_app