#!/bin/bash

# Set default values if not provided
PORT=${Port:-25565}
BEDROCK_PORT=${BedrockPort:-19132}
MAX_MEMORY=${MaxMemory:-2048}
VERSION=${Version:-"1.21.3"}
TIMEZONE=${TZ:-"Australia/Hobart"}

# Export environment variables
export PORT
export BEDROCK_PORT
export MAX_MEMORY
export VERSION
export TIMEZONE

# Navigate to the server directory
cd /scripts

# Start the Minecraft server
java -Xmx${MAX_MEMORY}M -jar paper-${VERSION}.jar nogui