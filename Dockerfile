# Hämta ett CONTEXT fron Dockers bibliotek
# Innehåller Node.js och en specifik Linux-version
FROM node:lts-alpine

RUN npm install -g http-server

# Skapa en mapp inuti den IMAGE som vi håller på att bygga
# Hädanefter refererar vi till /app med "./"
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Bygg produktionsversionen av vår app
# Den hamnar i mappen "dist" (inuti IMAGE)
#RUN npm run build

EXPOSE 8080
# Starta webbserver: "http-server dist"
CMD [ "npm", "run", "build" ]
# Alternativ syntax: CMD npm run build

# Nu har vi en CONTAINER
# När man startar CONTAINERN  så körs CMD-kommandot: "http-server dist"