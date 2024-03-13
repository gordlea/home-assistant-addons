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
# RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal
# RUN rustup check
# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh
RUN cd /tmp && \
    curl -sL https://github.com/gordlea/fireboard2mqtt/archive/refs/heads/v3.x.zip --output fb2mqtt.zip && \    
    unzip fb2mqtt.zip
RUN ls -l /tmp
RUN cd /tmp/fireboard2mqtt* && \
    cargo build && \
    cp target/debug/fireboard2mqtt /usr/local/bin/fireboard2mqtt

CMD [ "/run.sh" ]