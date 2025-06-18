#FROM tomcat:9-jdk8-corretto
#env variables
FROM 494713367427.dkr.ecr.eu-north-1.amazonaws.com/dhaneesh/dharun:latest
ENV CATALINA_HOME=/usr/local/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH
# Install unzip
#USER root
#RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*


WORKDIR $CATALINA_HOME/webapps
#COPY target/artifact.zip .
#RUN unzip artifact.zip
#RUN cp artifact/target/dhaneeshdharun.war .
COPY target/dhaneeshdharun.war .
EXPOSE 8080
CMD ["catalina.sh", "run"]
