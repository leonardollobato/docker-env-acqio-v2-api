#Thing's got better !!
## clone this directory, change the enviroment variables as you wish, go inside it and run:
> docker-compose up --build -d

##### from this line above is what the old people call legacy

# Initial Build
> docker build -t **CONTAINER_NAME** . 

### after build the container, run it!
> docker run -p 8080:80 -d **CONTAINER_NAME** 

### do you wanna access the container? go ahead!
> docker run -i -t -p 8080:80 mysite /bin/bash 

apachectl start 

### wanna mount a host volume? no problem
> docker run -p 8080:80 -d -v /Users/dan/site:/var/www/site mysite 

# Want to link to another container, follow the instruction below!
>docker run -p 8080:80 -d --name server --link mysql --restart always -v /Users/leonardollobato/Projects/Foccus:/var/www/site apache

## to restart without been pushed out of the container
> apache2ctl graceful
