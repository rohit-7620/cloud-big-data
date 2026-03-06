FROM bitnami/spark:3.5

USER root

# Install wget
RUN apt-get update && apt-get install -y wget

# Download the S3/MinIO connectors (Hadoop-AWS and AWS-SDK)
# We use version 3.3.4 to match Spark 3.5's internal Hadoop version
RUN wget -P /opt/bitnami/spark/jars/ https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar && \
    wget -P /opt/bitnami/spark/jars/ https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar

USER 1001
