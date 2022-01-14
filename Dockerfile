FROM schemaspy/schemaspy:snapshot
USER root
RUN apk update && \
    apk add mysql-client && \
    mkdir -p drivers && \
    apk add --update openssl && \
    wget -P /tmp https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.16.tar.gz && \
    tar xvzf /tmp/mysql-connector-java-8.0.16.tar.gz -C /tmp && \
    cp /tmp/mysql-connector-java-8.0.16/mysql-connector-java-8.0.16.jar /drivers/. && \
    rm -rf /tmp/mysql-connector-java-8.0.16*