FROM openjdk:7-jre

RUN apt-get update \
  && apt-get install -yq --no-install-recommends \
      libpostgresql-jdbc-java \
  && apt-get autoclean \
  && apt-get clean \
  && rm -rf /var/*/apt/*

RUN adduser --system --home /liquibase --disabled-password --group liquibase
WORKDIR /liquibase

USER liquibase

RUN set -x \
  && curl -L https://github.com/liquibase/liquibase/releases/download/liquibase-parent-2.0.5/liquibase-2.0.5-bin.tar.gz | tar -xzf -

RUN chmod 755 /liquibase/*

ENTRYPOINT ["/liquibase/liquibase"]
CMD ["--help"]
