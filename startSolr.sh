#!/bin/sh

#ADD  ./bin/solr  /usr/bin/local
 bin/solr zk upconfig -n flashConfig -d  flash/solr/flash/conf/    -z zoo1:2181

bin/solr start -c -s server/solr -p 8983 -z localhost:2181,localhost:2182,localhost:2183 -noprompt

bin/solr start -c -s server/solr2 -p 8984 -z localhost:2181,localhost:2182,localhost:2183 -noprompt

bin/solr start -c -s server/solr3 -p 8985 -z localhost:2181,localhost:2182,localhost:2183 -noprompt

bin/solr start -c -s server/solr4 -p 8986 -z localhost:2181,localhost:2182,localhost:2183 -noprompt
