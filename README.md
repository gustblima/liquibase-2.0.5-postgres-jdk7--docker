# liquibase-2.0.5-postgres-jdk7--docker
Based on liquibase/docker

Usage:
```
    docker run \
    -v "${PATH_TO_YOUR_MIGRATIONS_DIR}:${LIQUIBASE_MIGRATIONS_DIR}" \
    --network="host" \
    gustblima/liquibase-2.0.5-postgres \
    --driver=org.postgresql.Driver \
    --changeLogFile="${LIQUIBASE_MIGRATIONS_DIR}/changelog.xml" \
    --username=${DB_USER} \
    --classpath=/usr/share/java/postgresql.jar \
    --password=${DB_PASSWORD} \
    --url="jdbc:postgresql://${DB_HOST}/${DB_NAME}" \
    <<command>>
  ```