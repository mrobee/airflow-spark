FROM openjdk:8-jre-alpine

ENV DAEMON_RUN=true
ENV SPARK_VERSION=2.4.3
ENV HADOOP_VERSION=2.7
ENV PYSPARK_PYTHON=python3
ENV PATH="/spark/bin:${PATH}"

RUN apk add --no-cache bash curl jq python3

RUN apk add --no-cache --virtual=.build-dependencies wget ca-certificates && \
    wget --no-verbose https://www-eu.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
      tar xzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
      mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark && \
      rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
    apk del .build-dependencies

RUN pip3 -q --no-cache-dir --disable-pip-version-check install pyspark
