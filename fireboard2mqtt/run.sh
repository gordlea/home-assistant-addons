#!/usr/bin/with-contenv bashio

export RUST_LOG="$(bashio::config 'logLevel')"
export FB2MQTT_FIREBOARDACCOUNT_EMAIL="$(bashio::config 'fireboardAccount_email')"
export FB2MQTT_FIREBOARDACCOUNT_PASSWORD="$(bashio::config 'fireboardAccount_password')"

# bashio::log.info "email: ${FB2MQTT_FIREBOARDACCOUNT_EMAIL}"
# bashio::log.info "password: ${FB2MQTT_FIREBOARDACCOUNT_PASSWORD}"

export FB2MQTT_FIREBOARD_ENABLE_DRIVE="$(bashio::config 'fireboard_enable_drive')"

export FB2MQTT_MQTT_USERNAME=$(bashio::services mqtt "username")
export FB2MQTT_MQTT_PASSWORD=$(bashio::services mqtt "password")

MQTT_HOST=$(bashio::services mqtt "host")
MQTT_PORT=$(bashio::services mqtt "port")

MQTT_URL_PROTOCOL="mqtt"
if bashio::var.true "$(bashio::services mqtt "ssl")"; then
    MQTT_URL_PROTOCOL="mqtts"
fi

if bashio::var.true "$(bashio::config  "rust_backtrace")"; then
    export RUST_BACKTRACE=full
fi


export FB2MQTT_MQTT_URL="${MQTT_URL_PROTOCOL}://${MQTT_HOST}:${MQTT_PORT}"

bashio::log.info "${FB2MQTT_MQTT_URL}"

export FB2MQTT_DISCOVERY_PREFIX="$(bashio::config 'mqtt_discovery_prefix')"
export FB2MQTT_MQTT_BASE_TOPIC="$(bashio::config 'mqtt_base_topic')"
export FB2MQTT_MQTT_CLIENTID="$(bashio::config 'mqtt_clientid')"

bashio::log.info "Starting fireboard2mqtt"
bashio::log.info "drive enabled: ${FB2MQTT_FIREBOARD_ENABLE_DRIVE}"

fireboard2mqtt