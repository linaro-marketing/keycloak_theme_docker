#!/bin/bash
# Clone the Linaro keycloak theme
 if [-d "keycloak_theme"]; then
    echo "Pulling theme from GitHub..."
    git clone https://github.com/linaro-marketing/keycloak_theme.git keycloak_theme
  else
    echo "Pulling theme updates from GitHub..."
    cd keycloak_theme \
    git pull origin master

  fi
# Build and tag a Docker image
docker build . --tag linaro_keycloak:latest \
# Run docker-compose with the newly built image
docker-compose -f docker-compose.yml up
