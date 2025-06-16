FROM tomcat:latest
#env variables

ENV CATALINA_HOME=/usr/local/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH

WORKDIR $CATALINA_HOME/webapps
COPY target/artifact.zip .
RUN unzip artifact.zip
EXPOSE 8080
CMD ["catalina.sh", "run"]
