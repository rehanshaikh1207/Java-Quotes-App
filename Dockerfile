#Base image

FROM openjdk:17-alpine

#workding dirc

WORKDIR  /app

#copy code

COPY /src/Main.java /app/Main.java
COPY quotes.txt quotes.txt

#compile code

RUN javac Main.java

#EXPOSE THE PORT
EXPOSE 8000


#SERVE THE APP

CMD ["java","Main"]
