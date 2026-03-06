FROM bitnami/spark:3.5

USER root

# Install wget to download the connectors
RUN apt-get update && apt-get install -y wget

# Download Hadoop-AWS and AWS-SDK (Required for Spark to talk to MinIO)
RUN wget -P /opt/bitnami/spark/jars/ https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar && \
    wget -P /opt/bitnami/spark/jars/ https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar

USER 1001
