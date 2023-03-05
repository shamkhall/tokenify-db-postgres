FROM flyway/flyway:8.5.5

WORKDIR /flyway

COPY ./sql ./sql
