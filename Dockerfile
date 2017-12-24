FROM ubuntu
MAINTAINER rafaelbarros.df@gmail.com

# install java oracle 7
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && apt-get install -y unzip && apt-get clean

COPY lib/jdk-7u80-linux-x64.tar.gz /var/cache/oracle-jdk7-installer/jdk-7u80-linux-x64.tar.gz

RUN echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections

RUN apt-get install -y oracle-java7-installer

# set variables path
ENV JAVA_HOME=/usr/lib/jvm/java-7-oracle
ENV JRE_HOME=$JAVA_HOME/jre
ENV PATH=$PATH:$JAVA_HOME/bin

RUN rm -rf /var/cache/oracle-jdk7-installer/*

# install liferay 6 ce
RUN apt-get install -y curl

RUN curl -OL http://sourceforge.net/projects/lportal/files/Liferay%20Portal/6.2.5%20GA6/liferay-portal-tomcat-6.2-ce-ga6-20160112152609836.zip
RUN unzip liferay-portal-tomcat-6.2-ce-ga6-20160112152609836.zip -d /opt
RUN rm liferay-portal-tomcat-6.2-ce-ga6-20160112152609836.zip

RUN ln -s /opt/liferay-portal-6.2-ce-ga6 /opt/liferay-portal
RUN ln -s /opt/liferay-portal/tomcat-7.0.62 /opt/liferay-portal/tomcat