# Docker


## Prepare

run it, then log into main service

```
docker-compose up -d
docker exec -ti docker_main_1 bash
```

### Init DB

```
cmsInitDB
```

### Import users and contest

```
apt-get update
apt-get install unzip
cd ~
wget https://github.com/cms-dev/con_test/archive/master.zip
unzip master.zip -d .
cmsImportUser --all -L italy_yaml con_test-master
cmsImportContest -i -L italy_yaml con_test-master
```

### Add admin

```
cmsAddAdmin -p admin admin
```

### Restart

```
docker-compose stop 
docker-compose rm -f 
docker-compose up -d 
```

## Test

```
http://localhost/ (u1/p1)
http://localhost/aws (admin/admin)
http://localhost/rws
```



