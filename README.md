
# SugarCRM Local Development Environment

Development envrionment for Sugar that uses docker with WSL2 as the backend
## Required before installation

[How to Install WSL2](https://docs.microsoft.com/en-us/windows/wsl/install)

[Ubuntu 20.04.4 LTS](https://www.microsoft.com/store/productId/9MTTCL66CPXJ) 

[Docker Desktop](https://www.docker.com/products/docker-desktop/)

[Enable WSL2 Backend](https://docs.docker.com/desktop/windows/wsl/#:~:text=Start%20Docker%20Desktop%20from%20the,will%20be%20enabled%20by%20default.)

## Installation

Clone the project to your user's home directory in ubuntu

```bash
  git clone https://github.com/hghazzawi/SugarCRMDockerDev.git local
```

Go to the project directory

```bash
  cd local
```

Set preferred Password for MySQL

```bash
  local/conf/mysql/mysql-cli.cnf
```

Set preferred memory and cores for WSL ( default 4 GB & 2 Cores )

```bash
  local/conf/wsl.conf
``` 

Run docker compose to pull images and build containers

```bash
  docker compose up
```
## Upgrade

When upgrading any versions of the software installed please run the following after making the changes to the docker file
```bash
  docker-compose up -d --force-recreate --build
```


## Restoring a database backup

```docker
  cat /home/user/backups/sugar.sql | docker exec -i local_mysql-server_1 /usr/bin/mysql -u root --password=YOUR_PASS db_name
```

## Running php cli commands on Sugar instance

```docker
  docker exec -i local_web-server_1 php -f instance/script.php
```

## Visual Studio Code SugarCRM Snippets

I recommend using Visual Studio Code with the WSL extension. If you end up using VSCode, Checkout the following repo for helpful commonly used snippets
[SugarCRM Snippers VSCode](https://github.com/hghazzawi/sugarcrm_snippets)
