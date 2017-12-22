# Elasticsearch CSV Injestion with Logstash

**This docker-compose setup demonstrates how to injest CSV data into Elasticsearch with Logstash.**

![Architecture Diagram](http://stevenz.io/wp-content/uploads/2017/10/ElasticsearchLogstashCsv.png)

## Getting Started

After pulling this repository you can start it as a background process with the **up -d** options. 

```bash
[elasticsearch-logstash-csv]$ docker-compose up -d
Starting elasticsearchlogstashcsv_elasticsearch_1
Starting elasticsearchlogstashcsv_logstash_1
Starting elasticsearchlogstashcsv_kibana_1

[elasticsearch-logstash-csv]$ docker ps -a
CONTAINER ID        IMAGE                                                 COMMAND                  CREATED             STATUS              PORTS                                            NAMES
af490fbc0a69        docker.elastic.co/kibana/kibana:5.6.3                 "/bin/sh -c /usr/l..."   21 hours ago        Up About a minute   0.0.0.0:5601->5601/tcp                           elasticsearchlogstashcsv_kibana_1
2eb0cd33c854        docker.elastic.co/logstash/logstash:5.6.3             "/usr/local/bin/do..."   21 hours ago        Up About a minute   5044/tcp, 9600/tcp                               elasticsearchlogstashcsv_logstash_1
a0acadce574d        docker.elastic.co/elasticsearch/elasticsearch:5.6.3   "/bin/bash bin/es-..."   21 hours ago        Up About a minute   0.0.0.0:9200->9200/tcp, 0.0.0.0:9300->9300/tcp   elasticsearchlogstashcsv_elasticsearch_1
```

## How it works

This will stand up an ELK stack to process a sample [data.csv](csv/injest/data.csv) file located in the ./csv/injest directory. Logstash is configured with a single pipeline defined in [logstash.csv.pipeline.conf](csv/pipeline/logstash.csv.pipeline.conf). Upon starting it will read, parse and send the data to Elasticsearch.

* Elasticsearch will be running at (http://localhost:9200)[http://localhost:9200] 
* Kibana will be at (http://localhost:5601)[http://localhost:5601]. 
* **Both will be protected with the default credentials: elastic / changeme**.

## Kibana Visualization

When loading Kibana for the first time you need to define an index. Since we did not define a custom index pattern
logstash will auto-generate one for us that Kibana will assume by default. When you load Kibana for the first time 
leave the index pattern alone but note that this sample data is not meant to be temporal so **do not specify a Time Filter field**. 
