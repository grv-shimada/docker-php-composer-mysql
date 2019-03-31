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
 - CentOS6
  `$ docker exec -it apache-php service httpd start`
 - CentOS7
  `$ docker exec -it apache-php systemctl start httpd.service`

#### into a container
  `$ docker exec -it apache-php bash`

#### create a cakephp app
  `# composer self-update && composer create-project --prefer-dist cakephp/app (your app name)`

#### apache settings
 - `$ vi /etc/httpd/conf/httpd.conf`

#### config/app.php for postgresql
  ```
  'Datasources' => [
      'default' => [
          'className' => 'Cake\Database\Connection',
          'driver' => 'Cake\Database\Driver\Postgres',
          'persistent' => false,
          'host' => 'postgresql',
          /*
           * CakePHP will use the default DB port based on the driver selected
           * MySQL on MAMP uses port 8889, MAMP users will want to uncomment
           * the following line and set the port accordingly
           */
          'port' => 5432,
          'username' => 'root',
          'password' => 'root',
          'database' => 'postgres',
          ...
  ```
