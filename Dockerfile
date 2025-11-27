FROM alpine/java:21-jdk
COPY ./target/configserver-qt-0.0.1-SNAPSHOT.jar .
RUN mkdir -p /config
COPY src/main/resources/dynprop/quadraturaturni-local.properties /config
COPY src/main/resources/dynprop/quadraturaturni-dev.properties /config
COPY src/main/resources/dynprop/quadraturaturni.properties /config
EXPOSE 8888
CMD ["java", "-jar", "configserver-qt-0.0.1-SNAPSHOT.jar"]
