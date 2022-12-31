FROM golang:1.19

WORKDIR /usr/src/app

RUN go mod init indiehacks.link/oei 
RUN go get github.com/gofiber/fiber/v2

COPY . .

CMD ["go", "run", "main.go"]