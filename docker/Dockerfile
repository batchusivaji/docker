FROM ubuntu AS vcs
RUN cd && git clone https://github.com/wakaleo/game-of-life.git

FROM maven:3-amazoncorretto-8 AS builder
COPY --from=vcs /game-of-life /game-of-life
RUN cd game-of-life && mvn 


FROM tomcat:9-jdk-8
LABEL name="sivaji" organisation "qtdevops" 
COPY --from= builder / game-of-life/target/*.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080


 