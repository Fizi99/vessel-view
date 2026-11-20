FROM golang:1.27

WORKDIR /usr/src

EXPOSE 8080

COPY . .

CMD ["sleep", "infinity"]