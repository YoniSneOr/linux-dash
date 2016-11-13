
From centos:6
ADD hellow_World.sh  /tmp
RUN mv /tmp/hellow_World.sh /opt && \
    chmod +x /opt/hellow_World.sh && \
    cd /opt/ && \
    yum install -y mlocate net-tools wget curl gcc-c++ make git python  && \
    curl -sL https://rpm.nodesource.com/setup_6.x |  bash - && \
    wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/e/ && \
    yum install -y nodejs && \
    git clone https://github.com/afaqurk/linux-dash.git && \
    cd linux-dash  && npm install
EXPOSE 80
ENTRYPOINT ["/opt/hellow_World.sh"]
