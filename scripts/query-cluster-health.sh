#!/bin/bash -e

docker-compose run --rm query-service curl -X GET es-client-01:9200/_cluster/health?pretty
