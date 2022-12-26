# Docker-compose templates

## File structure

Each compose file is stored under its category folder. For example, under category `development`, we have:

```
- development
| - code-server.docker-compose.yml
| - gitea.docker-compose.yml
```

DO NOT use `latest` version because sometimes they will pull the nightly build image. Version should be the latest stable image.

## Persisted data

All persisted data are mounted under `/var/docker/<catogary>/<application-name>`.

## Environment variable

Separate environment file is used when there are too many environment variables. Use the folder structure below:

```
- <Application name>
| - env # Environment variable file
| - <application>.docker-compose.yml
```

## User

For containers that run under a specific user, use the information below:

| User Name | User ID | Group Name | Group ID |
| --------- | ------- | ---------- | -------- |
| container | 2001    | container  | 2001     |

You can create them as below:

```shell
sudo groupadd -g 2001 container && \
sudo useradd -u 2001 -g 2001 -m container && \
```

To create user without a home folder, use `-M` instead of `-m`.