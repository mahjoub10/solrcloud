
FROM ubuntu:vivid

RUN apt-get update \
 && apt-get -y install git  openjdk-8-jdk \
 && apt-get clean

RUN mkdir /opt/solr
WORKDIR /opt/solr

RUN git clone https://github.com/mahjoub10/solrcloud.git .
RUN ls


ADD /opt/solr/startSolr.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/startSolr.sh"]