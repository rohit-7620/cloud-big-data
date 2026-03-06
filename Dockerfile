FROM bitnami/spark:3.5.0
USER root
RUN apt-get update && apt-get install -y wget
RUN wget -P /opt/bitnami/spark/jars/ https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar
USER 1001
