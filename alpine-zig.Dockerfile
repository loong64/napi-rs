FROM ghcr.io/loong64/napi-rs/nodejs-rust:lts-alpine

ARG ZIG_VERSION=0.16.0

RUN apk add --update --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/edge/testing xz xz-dev && \
  rustup target add x86_64-unknown-linux-gnu && \
  wget https://ziglang.org/download/${ZIG_VERSION}/zig-x86_64-linux-${ZIG_VERSION}.tar.xz && \
  tar -xvf zig-x86_64-linux-${ZIG_VERSION}.tar.xz && \
  mv zig-x86_64-linux-${ZIG_VERSION} /usr/local/zig && \
  ln -sf /usr/local/zig/zig /usr/local/bin/zig && \
  rm zig-x86_64-linux-${ZIG_VERSION}.tar.xz
