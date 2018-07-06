# docker-php-composer-mysql

#### for build
  `$ docker-compose build`

#### for image
  `$ docker-compose pull`

#### start service in background
  `$ docker-compose up -d`

#### into a container
  `$ docker exec -it (container name) bash`

#### create a cakephp app
  `# composer self-update && composer create-project --prefer-dist cakephp/app (your app name)`

#### If pages transition does not work, review apache settings.
#### enable mod_rewrite
  `# a2enmod rewrite`
  `# service apache2 restart`
