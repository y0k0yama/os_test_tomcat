FROM tomcat:9.0

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

RUN chgrp -R 0 /usr/local/tomcat/webapps && \
    chmod -R g=u /usr/local/tomcat/webapps

COPY sample.war wabapps/sample.war