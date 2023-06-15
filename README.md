Prepopulated mysql container
============================

Based on https://github.com/iamdvr/prepopulated-mysql-container-example

Build image
```
docker build --tag prepopulated-db-image .
```

Start container from image
```
docker run -d -p 3306:3306 --rm --name test-mysql-container prepopulated-db-image
```

Check data in DB
```
docker run -it --rm --link test-mysql-container mysql:latest mysql -htest-mysql-container -uroot -proot myexample -e "select * from game;"
```

You can connect to inner console and work with data
```
docker exec -it test-mysql-container bash
```

Here you must specify password (root) after executing:
```
mysql -u root -p
```

Select DB
```
use myexample
```

Execute query
```
SELECT * FROM game;
```
