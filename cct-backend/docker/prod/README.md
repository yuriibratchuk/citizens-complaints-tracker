Manual: CCT + Docker in production
===

You need to have *Docker* <https://www.docker.com/products/docker> installed.

Running server in Production-mode
---
Open Terminal.

Clone repository and build server as web application archive
```sh
git clone https://github.com/yuriibratchuk/citizens-complaints-tracker.git && cd citizens-complaints-tracker/cct-backend

./gradlew buildWar
```

Build docker image with application
```sh
cp build/distributions/war/*.war docker/prod/war/

docker build -t cct-backend docker/prod/
```

Let's make a first run of application together with database.
```sh
cd docker/prod

docker-compose up
```
Two containers would start:
* prod_cct-backend_1
* prod_cct-database_1

Check list of running containers with the following command:
```sh
docker ps
```
You should see that two containers in the list.

Creating a database for Production.
If this was a first run, you probably spot some exceptions which prevent starting of app-core. Postgres do not have a database yet ant that cause exceptions.

```sh
cct-database_1  | ERROR:  relation "sys_config" does not exist at character 25
cct-database_1  | STATEMENT:  select NAME, VALUE from SYS_CONFIG
cct-backend_1   | 17:04:16.736 ERROR c.h.cuba.core.sys.AppContextLoader - Error initializing application
cct-backend_1   | java.lang.RuntimeException: Error loading DB-stored app properties cache
```

Let's create a database!

Open one more Terminal window and connect to container with application.
```sh
docker exec -it prod_cct-backend_1 bash
```

Inside container, create database using the following command:
```sh
cd bin

./dbupdate.sh postgres postgres create
```
Confirm creation of database with hitting *y* when asked.

Switch to Terminal window with output of docker-compose up and restart infrastructure:
* *Ctrl+C*  - stop containers with application and database
* Start containers one again:
    ```sh
    docker-compose up
    ```

Open web browser and navigate to <http://localhost:8080/app>

