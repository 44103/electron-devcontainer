FROM node:slim

RUN export DEBIAN_FRONTEND="noninteractive" && \
    apt-get update && apt-get -y install --no-install-recommends \
    git \
    zsh \
    vim \
    curl ca-certificates \
    libgtk-3.0 libgbm-dev libnss3 libatk-bridge2.0-0 libasound2 libxshmfence1 libglu1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workdir

ENV TZ=Asia/Tokyo
RUN zsh -c "`curl -L raw.github.com/44103/dotfiles/main/install.sh`"
