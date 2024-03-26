#!/usr/bin/with-contenv bashio

export RUST_LOG="$(bashio::config 'logLevel')"
export FB2MQTT_FIREBOARDACCOUNT_EMAIL="$(bashio::config 'fireboardAccount_email')"
export FB2MQTT_FIREBOARDACCOUNT_PASSWORD="$(bashio::config 'fireboardAccount_password')"

export FB2MQTT_FIREBOARD_ENABLE_DRIVE="$(bashio::config 'fireboard_enable_drive')"
bashio::log.info "drive enabled: ${FB2MQTT_FIREBOARD_ENABLE_DRIVE}"

# If the user has supplied any override mqtt settings, use them, otherwise
# use the mqtt service settings from home-assistant
if bashio::config.has_value 'override_mqtt_username'; then
    export FB2MQTT_MQTT_USERNAME="$(bashio::config 'override_mqtt_username')"
    bashio::log.info "found user supplied override_mqtt_username: ${FB2MQTT_MQTT_USERNAME}"
else
    export FB2MQTT_MQTT_USERNAME=$(bashio::services mqtt "username")
    bashio::log.info "using mqtt service username from home-assistant: ${FB2MQTT_MQTT_USERNAME}"
fi 

if bashio::config.has_value 'override_mqtt_password'; then
    export FB2MQTT_MQTT_PASSWORD="$(bashio::config 'override_mqtt_password')"
    bashio::log.info "found user supplied override_mqtt_password"
else
    export FB2MQTT_MQTT_PASSWORD=$(bashio::services mqtt "password")
    bashio::log.info "using mqtt service password from home-assistant"
fi

if bashio::config.has_value 'override_mqtt_url'; then
    export FB2MQTT_MQTT_URL="$(bashio::config 'override_mqtt_url')"
    bashio::log.info "found user supplied override_mqtt_url: ${FB2MQTT_MQTT_URL}"
else
    MQTT_HOST=$(bashio::services mqtt "host")
    MQTT_PORT=$(bashio::services mqtt "port")
    MQTT_URL_PROTOCOL="mqtt"
    if bashio::var.true "$(bashio::services mqtt "ssl")"; then
        MQTT_URL_PROTOCOL="mqtts"
    fi
    export FB2MQTT_MQTT_URL="${MQTT_URL_PROTOCOL}://${MQTT_HOST}:${MQTT_PORT}"
    bashio::log.info "using mqtt service url from home-assistant: ${FB2MQTT_MQTT_URL}"
fi

export FB2MQTT_DISCOVERY_PREFIX="$(bashio::config 'mqtt_discovery_prefix')"
export FB2MQTT_MQTT_BASE_TOPIC="$(bashio::config 'mqtt_base_topic')"
export FB2MQTT_MQTT_CLIENTID="$(bashio::config 'mqtt_clientid')"

bashio::log.info "Starting fireboard2mqtt"

fireboard2mqtt