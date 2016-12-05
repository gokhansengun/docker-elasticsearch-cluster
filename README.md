## Introduction

Creates a Elasticsearch Cluster consisting of 2 client, 3 master and 3 data nodes using Docker.

**CAUTION:** You will need at least 8 GB of free memory allocated to Docker daemon to be able to get cluster up and running.

## Usage

### Creating Cluster

Run `make all` to for the Elasticsearch cluster with all the nodes.

### Indexing a Sample Dataset

Dataset is generated using [mockaroo](https://www.mockaroo.com/), it is fun, you should use it too.

Run `make load-dataset` to index a dataset of 1K documents.

### Querying the Cluster Status 

Run `make query-cluster-health` to query the cluster.

## Todo

- Add [head](https://github.com/mobz/elasticsearch-head) plugin to Client nodes to visualize nodes and shards
- Create different variations (1 client, 2 master and 2 data nodes or 2 client, 3 master and 8 data nodes, etc) for different uses
- Try failover scenarios
