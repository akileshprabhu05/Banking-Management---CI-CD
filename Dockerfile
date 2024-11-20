# FROM openjdk:8u151-jdk-alpine3.7
# EXPOSE 8070
# ENV APP_HOME /usr/src/app
# COPY target/shopping-cart-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar
# WORKDIR $APP_HOME
# ENTRYPOINT exec java -jar app.jar

FROM tomcat 
WORKDIR webapps 
COPY target/WebApp.war .
RUN rm -rf ROOT && mv WebApp.war ROOT.war
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]