FROM node
WORKDIR /root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y netcat
COPY . .
RUN npm i && npm run build
RUN rm -fr /var/lib/apt/lists/*
EXPOSE 3000
CMD ["npm", "start"]
