# docker-php-composer-mysql

#### remove all container(with running container)
  ```
  $ docker rm -f `docker ps -aq`
  ```

#### remove all images
  `$ docker images -aq | xargs docker rmi`

#### compose up
  `$ docker-compose up -d`

#### confirm connection to container
  `$ docker exec -it apache-php ls`

#### start apache
  `$ docker exec -it apache-php service httpd start`

#### into a container
  `$ docker exec -it (container name) bash`

#### create a cakephp app
  `# composer self-update && composer create-project --prefer-dist cakephp/app (your app name)`
