ARG BUILD_FROM
FROM $BUILD_FROM


# Install requirements for add-on
RUN apk add --no-cache \
    curl \
    rust \ 
    cargo \
    rustup \
    git \
    pkgconfig \
    openssl-dev

RUN cd /tmp && \
    curl -sL https://github.com/gordlea/fireboard2mqtt/archive/refs/heads/v3.x.zip --output fb2mqtt.zip && \    
    unzip fb2mqtt.zip && \
    mv fireboard2mqtt* fireboard2mqtt && \
    cd /tmp/fireboard2mqtt* && \
    cargo build && \
    cp target/debug/fireboard2mqtt /usr/local/bin/fireboard2mqtt

FROM $BUILD_FROM
COPY --from=0 /tmp/fireboard2mqtt/target/debug/fireboard2mqtt /usr/local/bin/fireboard2mqtt
COPY run.sh /
RUN chmod a+x /run.sh && \
    apk add --no-cache \
    openssl-dev \
    libgcc
CMD [ "/run.sh" ]