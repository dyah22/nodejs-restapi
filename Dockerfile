FROM node:16.13.0

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  ffmpeg \
  wget \
  chromium \ 
  imagemagick && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .
RUN npm install -g npm@latest
RUN npm install
RUN npm install ytdl-core@latest
RUN npm install yt-search@latest

COPY . .
EXPOSE 5000

CMD ["npm", "start"]`
