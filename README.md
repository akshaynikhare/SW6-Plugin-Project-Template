## This is a Template for plugin development For shopware 6.

Start your plugin development with the boilerplate provided at this [template](https://github.com/akshaynikhare/SW6-Plugin-Project-Template). This repository serves not only as a starting point for Shopware 6 plugin development but is also pre-configured to set up a Dockware development environment.

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
[more info](https://dockware.io/getstarted)

## Installation Guide for the Plugin
After successfully setting up the Docker container & when the docker contaner is running, follow one of the installation options below:


### Option 1: Shopware Admin Panel
1. Log in to the Shopware admin panel at [localhost](http://localhost/admin) using the following credentials:
   - Username: **admin**
   - Password: **shopware**

2. Navigate to `admin > myextension`, locate your plugin, and proceed to install and activate.



### Option 2: Terminal (Inside Docker Container)

Access the Docker container terminal using the following commands:

```bash
docker exec -it slox_test_1 /bin/bash
```
Inside the container, run the following commands:
```bash
bin/console plugin:refresh
bin/console plugin:install SW6-Plugin-Project-Template
bin/console plugin:activate SW6-Plugin-Project-Template
```

### Option 3: SSH Installation

1. Open an SSH connection to the Docker container:

    ```bash
    ssh dockware@localhost
    ```

   Default password for the dockware container: `dockware`

2. Navigate to the project directory:

    ```bash
    cd ./html
    ```

3. Refresh the plugins:

    ```bash
    bin/console plugin:refresh
    ```

4. Install the Plugin:

    ```bash
    bin/console plugin:install SW6-Plugin-Project-Template
    ```

5. Activate the Plugin:

    ```bash
    bin/console plugin:activate SW6-Plugin-Project-Template
    ```

Please make sure to execute these commands in an English-language environment.

## Building the Plugin & Delivering the Plugin

After installing the plugin, it is important to note that the Composer install does not include compiled JavaScript. You will need to build/compile both the administration and storefront JavaScript.

### Building JavaScript & CSS:

#### For Administration:

```bash
bin/build-administration.sh
```

#### For Storefront:

```bash
bin/build-storefront.sh
```

## Unit Tests

If you want to run the unit tests, start by installing all
dev-dependencies and then run the command.

```ruby
composer run init:js
```
[more info](https://developer.shopware.com/docs/guides/plugins/plugins/testing/php-unit.html)


## Static Analyzer
If you want to run a separate static analyzer for this plugin,
install the dev-dependencies and run this command.

```ruby
phpstan analyse src tests
```
[more info](https://phpstan.org/user-guide/getting-started)


## Contributions
Please help with code, love, shares, feedback and bug reporting.

## License
The MIT License (MIT). Please see [License File](LICENSE) for more information.


## Support 
 
- For additional support, please email us at [info@cadnative.com](mailto:info@cadnative.com).
- or send us a contact requst at our website [cadnative.com](https://cadnative.com/contact/)
