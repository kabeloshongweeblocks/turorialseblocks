FROM ubuntu:latest
#MAINTAINER kabelo.shongwe@standardbank.co.za

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y pip
RUN pip install mlflow 
RUN pip install sklearn


RUN mkdir -p /mlflow
WORKDIR /mlflow
COPY main.py /mlflow/
COPY run.sh /mlflow/
RUN chmod +x /mlflow/run.sh

EXPOSE 5000

ENTRYPOINT ["./run.sh"]