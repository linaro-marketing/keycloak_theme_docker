FROM jboss/keycloak:latest
COPY keycloak_theme/ /opt/jboss/keycloak/themes/linaro
COPY standalone.xml /opt/jboss/keycloak/standalone/configuration/
ENV KEYCLOAK_DEFAULT_THEME=linaro
