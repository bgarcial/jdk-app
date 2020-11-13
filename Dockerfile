FROM adoptopenjdk/openjdk8:x86_64-tumbleweed-jre8u-nightly
RUN mkdir /opt/app 

# This command copy a jar file from local machine to container project directory
# COPY japp.jar /opt/app 
# CMD ["java", "-jar", "/opt/app/japp.jar"]
# RUN java -version