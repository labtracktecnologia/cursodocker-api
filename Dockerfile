FROM node:10-alpine
# exporta a porta da aplicação
EXPOSE 3333
# cria a pasta que vai rodar a aplicação
RUN mkdir /app
# copia os dados da aplicação pra dentro da pasta do container
COPY . /app
# informar a pasta de trabalho
WORKDIR /app
# instalar as dependências e executar a aplicação
RUN npm install
CMD ["node", "server.js"]
