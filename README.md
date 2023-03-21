## $\colorbox{#FFBAB7}{This is a Template for plugin development For shopware 6.}$
# Plugin Project Template for Shopware 6

This repository not only serves as a starting point for Shopware 6 plugin development but is also pre-configured to set up a Dockware development environment.

## Requirements
- Basic knowledge of PHP and Symfony framework
- Docker installed on your local machine
- Git installed on your local machine
- Text editor or IDE of your choice , preferable Visual Studio Code
- Familiarity with the basics of Shopware 6 and its plugin system [Shopawre 6 Documentation](https://developer.shopware.com/docs/)


## Use
```bash
$ git clone https://github.com/akshaynikhare/SW6-Plugin-Project-Template.git
$ cd SW6-Plugin-Project-Template 
$ docker-compose up
```

## How to install the Plugin
once the docker container is up and running  ssh into it 
```
ssh dockware@localhost 
```
Default password for the docware container : dockware 

```
cd ./html
bin/console plugin:refresh
bin/console plugin:install SW6-Plugin-Project-Template
bin/console plugin:activate SW6-Plugin-Project-Template
```
#### Building
The composer install does not come with compiled javascript. You will have to build/compile your administration and storefront javascript.

Building the javascript & css will still be needed.
```
bin/buildadmin.sh
bin/build.sh
```

## Contributions
Please help with code, love, shares, feedback and bug reporting.

## License
The MIT License (MIT). Please see [License File](LICENSE) for more information.

