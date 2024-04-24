
# Toneify DB Postger

tokenify-db-postgres is postgres database structure of this project with flyway migration tool.

Requirements
------------

This project requires the following tools:

 * [Docker](https://docs.docker.com/engine/install/)
 * [Docker Compose](https://docs.docker.com/compose/install/)


## Run Locally



Clone the project

```bash
  git clone https://github.com/shamkhall/tokenify-db-postgres
```

Go to the project directory

```bash
  cd tokenify-db-postgres
```

Start the service

```bash
  docker compose up -d
```
After service `database`, `flyway` 
migration tool starts and migrates all database structure.

After all procedures you will be able to connect to db 
by following credentials
- host: `localhost:5432`
- password: `postgres`
- database name: `tokenify-db-postgres`  

Enjoy !



## API Reference
https://github.com/shamkhall/tokenify-api-nestjs
