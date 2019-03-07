FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd
RUN mkdir -p /usr/local/zipkinserver
ADD @project.build.finalName@.jar /usr/local/zipkinserver/
ADD run.sh run-temp.sh
RUN sed 's/\r//g' < run-temp.sh > run.sh
RUN rm -f run-temp.sh
RUN chmod +x run.sh
CMD ./run.sh
