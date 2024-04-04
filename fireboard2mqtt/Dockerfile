ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache \
    curl \
    rust \ 
    cargo \
    git \
    pkgconfig \
    openssl-dev

# RUN cd /tmp && \
#     curl -sL https://github.com/gordlea/fireboard2mqtt/archive/refs/tags/v3.1.0.zip --output fb2mqtt.zip && \    
#     unzip fb2mqtt.zip && \
#     mv fireboard2mqtt* fireboard2mqtt && \
#     cd /tmp/fireboard2mqtt* && \
#     cargo build --release
COPY ./fireboard_repo_dir /tmp/fireboard2mqtt
RUN cd /tmp/fireboard2mqtt* && \
    cargo build --release
# COPY ./fireboard2mqtt/fireboard2mqtt /tmp/fireboard2mqtt
# RUN cd /tmp/fireboard2mqtt* && \
#     ls -alh && \
#     cargo build
# RUN cp /tmp/fireboard2mqtt/target/release/fireboard2mqtt /usr/local/bin/fireboard2mqtt

FROM $BUILD_FROM
COPY --from=0 /tmp/fireboard2mqtt/target/release/fireboard2mqtt /usr/local/bin/fireboard2mqtt
COPY run.sh /
RUN chmod a+x /run.sh && \
    apk add --no-cache \
    openssl-dev \
    libgcc
CMD [ "/run.sh" ]
