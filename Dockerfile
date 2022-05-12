FROM ibmcom/ace-mq:11.0.0.8-r1-amd64

USER root

COPY fuentes/APP_Cliente/BAR /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser

USER 888
RUN ace_compile_bars.sh

USER root
RUN  chmod -R ugo+rwx /home/aceuser

COPY package /tmp/package
USER root
RUN rpm -Uvp /tmp/package/*.rpm

COPY drivers/psqlodbcw.so /opt/ibm/ace-11/server/ODBC/drivers/lib/psqlodbcw.so
COPY drivers/psqlodbca.so /opt/ibm/ace-11/server/ODBC/drivers/lib/psqlodbca.so

# aceuser
USER 888