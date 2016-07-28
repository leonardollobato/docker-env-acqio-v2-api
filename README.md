docker build -t mysite .
docker run -p 8080:80 -d mysite
docker run -i -t -p 8080:80 mysite /bin/bash
apachectl start
docker run -p 8080:80 -d -v /Users/dan/site:/var/www/site mysite
docker run -p 8080:80 -d --name server --link mysql --restart always -v /Users/leonardollobato/Projects/Foccus:/var/www/site apache
