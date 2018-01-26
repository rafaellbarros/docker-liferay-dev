# Docker liferay-6.2-ce-ga6 Developer Environment

## Requirements
```
Docker version 17.09.0-ce or > .
docker-compose version 1.18.0 or > .
```

## Liferay with Hsql
```
docker-compose up -d .

```

Access: [localhost:8080](http://localhost:8080)

## Liferay with Postgres
```
docker-compose -f docker-compose.postgres.yml up -d
```

Access: [localhost:8282](http://localhost:8282)

## Liferay with Mysql
```
docker-compose -f docker-compose.mysql.yml up -d
```

Access: [localhost:8181](http://localhost:8181)

## Using sdk your ide environment

Alter name build.user.properties for name user host
```
build.yourusernamehost.properties
```

## Update path app.server.parent.dir in build.yourusernamehost.properties
## Set to libs path liferay-portal in folder lib

```
app.server.parent.dir=/yourpath/docker-liferay-dev/lib/liferay-portal-lite-lis
```

## Set sdk path project in your ide environment and create your plugin liferay

## Use Ant in your IDE or local to building plugins. The sdk is configured to do deploy in tmp/deploy
