# airflow-spark
Apache Airflow with Apache Spark cluster support

# Usage

* Build the docker image using `make build-images`
* Put your data in `data` directory
* Put your dag files in `dags` directory
* Put your additional pipeline scripts in `pipeline_scripts` directory
* Edit `.env` file to meet your needs
* Run `docker-compose up`
* Open `http://localhost:8089` in your browser
