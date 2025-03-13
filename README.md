# docker-openai-agent-python

This repository provides a Docker Compose setup for running an [openai-agents-python](https://github.com/openai/openai-agents-python) environment. The setup supports VNC connections, allowing users to control the container with graphics.

## Features
Docker Compose setup for easy management.
VNC connection enabled to control the container graphically.

## Setup Instructions

1. Clone the Repository
    ```
    git clone https://github.com/yourusername/docker-openai-agent-python.git
    cd docker-openai-agent-python
    ```

2. Configure Environment Variables

    Create a `.env` file in the project root with the following content:
    ```
    TIMEZONE=Europe/London      # Set your timezone 
    AGENT_VNCPW=test            # Set your password for VNC connection
    OPENAI_API_KEY=xxx          # Set your OPENAI_API_KEY
    ```

3. Build and Launch the Containers
    ```
    docker compose up --build -d
    ```

4. Access with VNC (if needed) 

    Connect to the container using a VNC client to control it graphically.Openai-agents-python environment over docker.
    It also capable of VNC connection so that we can control the container with graphics.

