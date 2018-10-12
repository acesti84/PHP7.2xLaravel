FROM lunalabs/ubuntu18:light

#install php7.2 and dependecies
RUN apt-get update
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

# install node 8.x
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# remove unused packages
RUN apt-get -y autoclean
RUN apt-get -y clean
RUN apt-get -y autoremove
