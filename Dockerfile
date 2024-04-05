#Use the official image of Golang as the base
FROM golang:1.17

#Set working directory
WORKDIR /APP

#Copy application code into the image
COPY go.mod ./
RUN go mod download

COPY *.go ./

#Run the Go application
RUN go build -o jk-golang-webapp-books

#Expose the port the application listens on
EXPOSE 8080

#Start the application
CMD [“./jk-golang-webapp-books”]
