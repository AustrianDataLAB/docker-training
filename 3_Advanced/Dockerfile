ARG VARIANT=1-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/go:${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        curl \
        gpg \
        python3 \
        python3-pip

RUN pip install --upgrade pip

USER vscode