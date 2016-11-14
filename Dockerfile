
From centos:6

ADD linux-dash /opt/linux-dash
ADD start_server.sh  /opt

RUN    chmod +x /opt/start_server.sh && \
    cd /opt/ && \
    yum install -y mlocate net-tools wget curl gcc-c++ make git python  && \
    curl -sL https://rpm.nodesource.com/setup_6.x |  bash - && \
    wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/e/ && \
    yum install -y nodejs && \
    cd linux-dash  && npm install
EXPOSE 80
ENTRYPOINT ["/opt/start_server.sh"]
