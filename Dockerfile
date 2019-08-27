FROM jboss/keycloak:7.0.0
COPY keycloak_theme/ /opt/jboss/keycloak/themes/linaro
COPY standalone.xml /opt/jboss/keycloak/standalone/configuration/
ENV KEYCLOAK_DEFAULT_THEME=linaro
