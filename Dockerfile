FROM drydock/u14pytall:prod

ENV ES_VERSION 2.3.4
RUN curl -L https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/$ES_VERSION/elasticsearch-$ES_VERSION.tar.gz | tar xvz -C /usr/local \
    && rm /usr/local/bin/elasticsearch \
    && ln -s /usr/local/elasticsearch-$ES_VERSION/bin/elasticsearch /usr/local/bin/elasticsearch
