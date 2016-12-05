all:
	docker-compose up -d es-master-01
	docker-compose up -d es-master-02
	docker-compose up -d es-master-03

	echo "Sleep a few seconds for master nodes to be available"

	sleep 10

	docker-compose up -d es-client-01
	docker-compose up -d es-client-02
	
	docker-compose up -d es-data-01
	docker-compose up -d es-data-02
	docker-compose up -d es-data-03

logs:
	docker-compose logs -f

clean:
	docker-compose down -v

query-cluster-health:
	./scripts/query-cluster-health.sh

load-dataset:
	docker-compose run --rm query-service /scripts/load-dataset.sh

ps:
	docker-compose ps