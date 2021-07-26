FROM debian:stable-slim
RUN apt update
RUN apt install curl wget default-jre -y
RUN wget https://github.com/freyacodes/Lavalink/releases/download/3.3.2.5/Lavalink.jar
RUN wget https://raw.githubusercontent.com/freyacodes/Lavalink/master/LavalinkServer/application.yml.example
RUN mv application.yml.example application.yml
EXPOSE 2333/tcp
CMD ["java", "-jar", "Lavalink.jar"]
