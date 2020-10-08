
FROM java:8-jdk-alpine
COPY webapp/ /usr/app/
WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["run"]
