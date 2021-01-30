# postgresql-replication
This repository validates postgres replication by using docker. 

## How
1. Setup primary db.
```
$ docker-compose up -d primary
```
2. Store basebackup from primary db.
```
$ docker-compose run -u postgres secondary /backup/setup-db.sh
```

3. Run standby db.
```
$ docker-compose up -d secondary
```
