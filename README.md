# Elasticsearch 

Provided here is a collection of code and configuration for Elasticsearch.

## What is Elasticsearch?

[Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html) is a search engine based on [Apache Lucene](https://lucene.apache.org/). It provides a distributed, multitenant-capable full-text search engine with an HTTP web interface and schema-free JSON documents. [[Reference: Wikipedia](https://en.wikipedia.org/wiki/Elasticsearch)]

Elasticsearch is **document** oriented with operations to index (insert), delete, retrieve, analyze and search for documents. It's a highly customizable product that overlaps with many different technologies. 

## Elasticsearch Terminology

**Cluster** is a collection of one or more nodes which share the same cluster name. At all times there is a single master node which is chosen automatically and replaced in a resilient manner upon failure. 

**Node** is a single instance of Elasticsearch belonging to a single cluster. Multiple nodes can be started on a single server but it is not advised. There are a variety of means to link/discover nodes when joining a distributed cluster. 

**Index** is analogous to a __database__ in an relational database. 

**Type** is ...

**Shard** is ...
