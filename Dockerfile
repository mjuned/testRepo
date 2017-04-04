FROM ubuntu:14.04

ARG ENVIRONMENT

# Install Java 8
RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get install oracle-java8-installer -y --force-yes
RUN apt-get install oracle-java8-set-default

EXPOSE 8080
# Start
#nohup xvfb-run -a -s "-screen 0 1024x768x24" java -jar ./gs-spring-boot-0.1.0.jar &
#while :; do
#  sleep 300
#done
