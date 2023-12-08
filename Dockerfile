FROM node:gallium-alpine3.16
EXPOSE 80 8000 8080
LABEL maintainer="Eyevinn Technology <info@eyevinn.se>"

RUN mv tsconfig.base.json base.json

WORKDIR /app
ADD . .
RUN npm install 
RUN npm run build

CMD ["npm", "start"]
