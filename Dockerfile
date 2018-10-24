FROM lunalabs/ubuntu18

#install php7.2 and dependecies
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install php7.2 
RUN apt-get -y install libapache2-mod-php7.2
RUN apt-get -y install php7.2-xml 
RUN apt-get -y install php7.2-mbstring 
RUN apt-get -y install php7.2-mysql 
RUN apt-get -y install php7.2-json 
RUN apt-get -y install php7.2-curl 
RUN apt-get -y install php7.2-cli 
RUN apt-get -y install php7.2-common 
RUN apt-get -y install php-pear
RUN apt-get -y install php7.2-gd 
RUN apt-get -y install libapache2-mod-php7.2 
RUN apt-get -y install php7.2-zip
RUN apt-get -y install sendmail
RUN apt-get -y install cmake
RUN apt-get -y install libpng-dev

# install node 8.x
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# install zint (barcode generator)
RUN mkdir -p /tmp/zint
WORKDIR /tmp/zint
RUN wget https://sourceforge.net/projects/zint/files/zint/2.6.3/zint-2.6.3_rc2.src.tar.gz
RUN tar xvf zint-2.6.3_rc2.src.tar.gz
WORKDIR /tmp/zint/zint-2.6.3_rc2.src
RUN cmake .
RUN make
RUN make install
