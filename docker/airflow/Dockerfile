FROM spark-base:2.4.3

RUN apk add --no-cache \
  openblas \
  python3-dev \
  freetype-dev \
  make \
  g++ \
  gfortran \
  musl \
  libxslt \
  libxslt-dev \
  libxml2 \
  libxml2-dev  \
  linux-headers && \
  apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community add dumb-init && \
  CFLAGS="-I/usr/include/libxml2" \
  pip3 install --no-cache-dir apache-airflow

RUN pip3 install --no-cache-dir --upgrade Flask

EXPOSE 8089
WORKDIR /airflow

COPY entrypoint.sh /

ENV \
  AIRFLOW__CORE__AIRFLOW_HOME=/airflow \
  AIRFLOW__CORE__DAGS_FOLDER=/airflow/dags \
  AIRFLOW__CORE__BASE_LOG_FOLDER=/airflow/logs \
  AIRFLOW__CORE__PLUGINS_FOLDER=/airflow/plugins \
  AIRFLOW__CORE__EXECUTOR=SequentialExecutor \
  AIRFLOW__CORE__SQL_ALCHEMY_CONN=sqlite:////airflow/airflow.db \
  AIRFLOW__CORE__LOAD_EXAMPLES=False

CMD ["airflow", "webserver", "--port", "8089"]
ENTRYPOINT ["/entrypoint.sh"]
