FROM openshift/base-centos7

ENV LEIN_ROOT=1

RUN yum install -y --setopt=tsflags=nodocs \

    # leiningen deps
    java-1.8.0-openjdk \

    # phantomjs deps
    gcc \
    gcc-c++ \
    make \
    flex \
    bison \
    gperf \
    ruby \
    openssl-devel \
    freetype-devel \
    fontconfig-devel \
    libicu-devel \
    sqlite-devel \
    libpng-devel \
    libjpeg-devel \
    perl && \

    yum clean all -y && \

    # leiningen
    curl -L https://raw.githubusercontent.com/technomancy/leiningen/2.7.1/bin/lein -o /usr/local/bin/lein && \
    chmod +x /usr/local/bin/lein && \

    # phantomjs
    curl -L https://github.com/ariya/phantomjs/archive/2.0.0.tar.gz | tar -xvzC /opt && \
    cd /opt/phantomjs-2.0.0/ && yes | ./build.sh && \
    ln -s /opt/phantomjs-2.0.0/bin/phantomjs /usr/local/bin/phantomjs

COPY s2i/bin /usr/libexec/s2i

EXPOSE 3000
USER 1001

