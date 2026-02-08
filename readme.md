# Run Openclaw Gateway in a Docker Container
This is a simple docker image that allows you to run Openclaw in a container.

## Quick Start
Create and set an `.env` file with the following values:
```
OPENCLAW_CONFIG_DIR=<Path to the local config directory>
OPENCLAW_WORKSPACE_DIR=<Path to the local workspace directory>
```

Run the image with the following command:

```
docker-compose up -d
```