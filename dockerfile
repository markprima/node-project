FROM node:14

# direktori kerja di dalam container
WORKDIR /usr/src/app

# Menyalin package*.json
COPY package*.json ./

# Install dependensi
RUN npm install

# Menyalin kode aplikasi ke dalam container
COPY . .

# Port yang akan diexpose di local
EXPOSE 8080

# Perintah yang akan dijalankan ketika container dijalankan
CMD ["npm", "start"]
