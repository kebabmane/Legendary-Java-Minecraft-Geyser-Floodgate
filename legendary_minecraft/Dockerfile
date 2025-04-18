FROM ubuntu:rolling

# Install dependencies
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    openjdk-21-jre-headless \
    tzdata \
    sudo \
    curl \
    unzip \
    net-tools \
    gawk \
    openssl \
    findutils \
    pigz \
    libcurl4 \
    libc6 \
    libcrypt1 \
    apt-utils \
    libcurl4-openssl-dev \
    ca-certificates \
    nano && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV Port=25565
ENV BedrockPort=19132
ENV MaxMemory=2048
ENV Version="1.21.3"
ENV TZ="Australia/Hobart"
ENV NoBackup=""
ENV BackupCount=10
ENV NoPermCheck=""
ENV NoViaVersion=""
ENV QuietCurl=""

# Expose ports
EXPOSE 25565/tcp
EXPOSE 19132/tcp
EXPOSE 19132/udp

# Copy scripts
COPY start.sh /scripts/start.sh
COPY server.properties /scripts/server.properties
COPY *.yml /scripts/

# Make scripts executable
RUN chmod +x /scripts/start.sh

# Set entrypoint
ENTRYPOINT ["/bin/bash", "/scripts/start.sh"]