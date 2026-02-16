# Run Openclaw Gateway in a Docker Container
This is a simple docker image that allows you to run Openclaw in a container.

## Quick Start
Create and set an `.env` file with the following values:
```
OPENCLAW_CONFIG_DIR=<Path to the local config directory>
OPENAI_API_KEY=<OPTIONAL: OpenAI API Key>
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
Attach to the commandline for the new running container:
```
docker exec -it openclaw-gateway bash
```
Run doctor, status and security audits to makes sure things are in order:
```
openclaw doctor --fix
openclaw security audit
openclaw status
```
Then, start a chat session in the terminal:
```
openclaw tui
```