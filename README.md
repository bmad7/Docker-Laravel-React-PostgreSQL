# DOCKER + LARAVEL 8 BACKEND + REACT (Using Next JS) FRONTEND + POSTGRESQL DB

###Prerequisites
* Docker [For Windows](https://docs.docker.com/docker-for-windows/install/) | [For Linux(Ubuntu)](https://docs.docker.com/engine/install/ubuntu/)
* NodeJs [For Windows](https://nodejs.org/en/download/) | [For Linux(Ubuntu)](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04)
* Composer
[For Windows](https://getcomposer.org/download/) | [For Linux(Ubuntu)](https://www.ionos.com/community/hosting/php/install-and-use-php-composer-on-ubuntu-1604/)
---
- Configure .env file
####For Windows
- run `install.bat` file
####For Linux
1. `docker-compose up -d`
2. `npx create-react-app frontend`
3. `composer create-project laravel/laravel 8.* backend  --prefer-dist`
4. `cd frontend`
5. `npm install axios next`