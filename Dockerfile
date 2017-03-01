FROM openjdk:8u111-jre-alpine

LABEL maintainer="Bimlendu Mishra"

RUN addgroup -S replicator && adduser -S -g replicator replicator

RUN mkdir -p /opt/replicator

COPY ./target/dynamodb-cross-region-replication-*.jar /opt/replicator/dynamodb-cross-region-replication.jar

RUN chown -R replicator:replicator /opt/replicator

USER replicator
WORKDIR /opt/replicator

ENTRYPOINT ["java", "-jar", "/opt/replicator/dynamodb-cross-region-replication.jar"]
CMD ["--help"]
