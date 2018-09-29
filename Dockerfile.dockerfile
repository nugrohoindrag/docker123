#Image for golang using latest version
FROM golang:latest
#Make directory folder main
RUN mkdir -p /main
#Copy the source app to /main
ADD /src/app /main/
#Where the directory work
WORKDIR /main
#Build the apps 
RUN go build -o cetol .
#Ending
CMD ["/main/cetol"]
#port
EXPOSE 8000


