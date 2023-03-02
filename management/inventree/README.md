# InvenTree

Modified from official production docker-compose file: [Link](https://github.com/inventree/InvenTree/blob/master/docker/production/docker-compose.yml)

You need to run the below command before the first run to initialize the database, according to the [official document](https://docs.inventree.org/en/latest/start/docker_prod/#initial-database-setup):

`docker-compose run inventree-server invoke update`

### Changes:
- Change Redis and Postgres to `alpine` version
- Use sqlite3 instead of Postgres by default
    > You should use database with replicas/active-standby in production

### Profile:
- redis: enable redis
- postgres: enable Redis + Postgres