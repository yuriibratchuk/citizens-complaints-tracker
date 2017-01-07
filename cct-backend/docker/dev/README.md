Manual: CCT + Docker in development
===

Run your application via Cuba Studio, make sure container with database(*prod_cct-database_1*) up. Required to have *Docker* <https://www.docker.com/products/docker> installed.

Running database container
---

```sh
docker run --name dev_cct-database -d -p 5432:5432 -v ~/Storage/CctDatabaseDev:/var/lib/postgresql/data/pgdata -e POSTGRES_DB=CctDatabaseDev -e POSTGRES_PASSWORD=postgres -e PGDATA=/var/lib/postgresql/data/pgdata postgres
```
Open Cuba Studio.
Make sure correct database connection settings configured in project properties (*Project Properties > Edit*)
  * Database type: *PostgreSQL*
  * Database url: *jdbc:postgresql://localhost:5423/CctDatabaseDev*
  * Database user: *postgres* 
  * password: *postgres*

Create database using: *Run > Create database*
