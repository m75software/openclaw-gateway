# Run Openclaw Gateway in a Docker Container
This is a simple docker image that allows you to run Openclaw in a container.

## Quick Start
Create and set an `.env` file with the following values:
```
OPENCLAW_CONFIG_DIR=<Path to the local config directory>
OPENCLAW_WORKSPACE_DIR=<Path to the local workspace directory>
```

### First Run
The first time you run this you need to go through the onboarding process to create all the necessary configuration files. You can skip this step if you already have the appropriate files in your config directory.

```
docker compose run --rm openclaw-cli onboard
```
Make note of the token, you'll need this when accessing the Control UI.

### Start the stack
Run the image with the following command:

```
docker compose up -d
```

Since this is running on the LAN (by default) you will need to authorize any browsers trying to access the Control UI. To do this run the following commands:
```
docker exec -it openclaw-gateway bash
openclaw devices list
openclaw devices approve <device ID>
```

### Attach to CLI for the Gateway
```
docker exec -it openclaw-gateway bash
```