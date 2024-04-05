#Use the official image of Golang as the base
FROM golang:1.17

#Set working directory
WORKDIR /APP

#Copy application code into the image
COPY …

#Run the Go application
RUN go build -o my-go-app

#Expose the port the application listens on
EXPOSE 8080

#Start the application
CMD [“./my-go-app”]
