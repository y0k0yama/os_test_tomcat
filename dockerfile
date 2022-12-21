FROM tomcat:9.0

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

COPY sample.war wabapps/sample.war