build-images:
	cp -f .env.sample .env
	docker build -t spark-base:2.4.3 ./docker/base
	docker build -t spark-master:2.4.3 ./docker/spark-master
	docker build -t spark-worker:2.4.3 ./docker/spark-worker
	docker build -t airflow:0.1.0 ./docker/airflow
