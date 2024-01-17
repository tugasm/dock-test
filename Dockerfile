# Dockerfile

# Menggunakan image resmi Golang
FROM golang:1.19

# Menentukan direktori kerja di dalam kontainer
WORKDIR /app

# Menyalin file main.go ke dalam direktori kerja di dalam kontainer
COPY main.go .

# Mengonfigurasi port yang akan digunakan oleh aplikasi
EXPOSE 8080

# Menggunakan perintah go untuk build aplikasi Go
RUN go build -o main .

# Menjalankan aplikasi saat kontainer dimulai
CMD ["./main"]
