FROM snasello/liferay-6.2:6.2-ce-ga6

LABEL author="Rafael Barros" maintainer="rafaelbarros.df@gmail.com"

RUN ln -s /opt/liferay-portal-6.2-ce-ga6 /opt/liferay-portal

ENV LIFERAY_PATH_DIR=/opt/liferay-portal

# Add configuration files
ADD ./resources/portal-ext.properties $LIFERAY_PATH_DIR/portal-ext.properties
ADD ./resources/portal-setup-wizard.properties $LIFERAY_PATH_DIR/portal-setup-wizard.properties
ADD ./resources/setenv.sh $LIFERAY_PATH_DIR/tomcat-7.0.62/bin/setenv.sh
