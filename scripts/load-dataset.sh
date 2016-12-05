#!/bin/bash -e

# Create the index named "blogs"
curl -X PUT -d @create-index.json http://es-client-01:9200/my_blogs --header "Content-Type:application/json" 

# Load all the documents
mkdir -p /tmp/es-sample

while read p; do
  echo "$p" > /tmp/es-sample/entry.json
  curl -H "Content-Type:application/json" -X POST -d @/tmp/es-sample/entry.json http://es-client-01:9200/my_blogs/blog?pretty
done <primer-dataset.jsonlist

# Query the status

curl -X GET http://es-client-01:9200/_stats?pretty
