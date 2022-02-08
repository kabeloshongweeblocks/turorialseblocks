FROM python:3.8.2-slim

RUN pip install psycopg2-binary==2.8.5 && \
    pip install mlflow[extras]==1.9.1

EXPOSE 5000

ENTRYPOINT ["mlflow", "server"]
