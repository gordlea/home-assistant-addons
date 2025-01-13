ARG BUILD_FROM
FROM $BUILD_FROM
# FROM ghcr.io/home-assistant/aarch64-base-debian:bookworm

# Install requirements for add-on
# RUN apk add --no-cache \
#     curl \
#     git \
#     pkgconfig \
#     openssl-dev
RUN apt-get update && apt-get -y install \
    libssl-dev \
    build-essential \
    pkg-config
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="$PATH:/root/.cargo/bin"
RUN /root/.cargo/bin/rustup check
# RUN ls /root/.cargo/bin
# ENV PATH="/root/.cargo/bin:${PATH}"
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
# FROM ghcr.io/home-assistant/aarch64-base-debian:bookworm
COPY --from=0 /tmp/fireboard2mqtt/target/release/fireboard2mqtt /usr/local/bin/fireboard2mqtt
COPY run.sh /
RUN apt-get update && apt-get -y install \
    libssl-dev 
    # RUN chmod a+x /run.sh && \
#     apk add --no-cache \
#     openssl-dev \
#     libgcc
CMD [ "/run.sh" ]
