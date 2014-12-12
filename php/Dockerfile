FROM fedora:latest

RUN yum install -y \
    git \
    make \
    wget \
    gcc \
    mod_fcgid \
    tar \
    bzip2 \
    autoconf \
    libxml2-devel \
    libcurl-devel \
    postgresql-devel \
    openssl-devel \
    libssh2-devel \
    openldap-devel \
    turbojpeg-devel \
    libjpeg-turbo-devel \
    libpng-devel \
    libicu-devel \
    libmcrypt-devel \
    ImageMagick-devel \
    gcc-c++

RUN git clone https://github.com/fpoirotte/phpfarm.git /opt/phpfarm
RUN /opt/phpfarm/src/main.sh 5.4.35
RUN /opt/phpfarm/inst/bin/switch-phpfarm 5.4.35

COPY configuration /

