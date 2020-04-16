FROM registry.access.redhat.com/ubi8/ubi:8.1-406

RUN yum install -y pinentry unzip wget rsync

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"; \
    unzip /tmp/awscliv2.zip -d /tmp/; \
    /tmp/aws/install

RUN curl "https://dl.min.io/client/mc/release/linux-amd64/mc" -o "/tmp/mc"; \
    tar -xzf /tmp/mc.tar.gz -C /tmp/; \
    chmod +x /tmp/mc; \
    mv /tmp/mc /usr/bin/mc

RUN wget "https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz" -O "/tmp/oc.tar.gz"; \
    tar -xzf /tmp/oc.tar.gz -C /tmp/; \
    chmod +x /tmp/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit/oc; \
    mv /tmp/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit/oc /usr/bin/;

RUN cd /tmp; \
    wget "https://repo.mysql.com/mysql80-community-release-el8-1.noarch.rpm"; \
    yum localinstall -y mysql80-community-release-el8-1.noarch.rpm; \
    yum -y install mysql;

RUN wget "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64" -O "/tmp/jq"; \
    chmod +x /tmp/jq; \
    mv /tmp/jq /usr/bin/;