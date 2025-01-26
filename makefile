# Makefile

# Variables
DOCKER_COMPOSE_FILE = docker-compose.yml
SERVICE_NAME = slox_test_1
SSH_USER = dockware

# Targets
.PHONY: up down ssh

up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

ssh:
	docker exec -it $(SERVICE_NAME) /bin/bash


zip:
	zip -r slox_example_plugin_v0.0.1.zip ./slox_example_plugin/
