# Hack4Her: Logic Synthesis for AI

This repo contains hands-on material for the "Logic Synthesis for AI" tutorial session at the Hack4Her 2024.

## Setup

Clone this repository:

```sh
git clone https://github.com/marcelwa/ls4ai.git
```

### Option 1: run locally

Download the Jupyter notebook `ls4ai.ipynb` and run it locally.


### Option 2: run inside a Docker container

*Note: The following description uses UNIX-like shell commands. If you are using Windows, your commands might differ.*

Make sure the docker daemon is running:
```sh
dockerd

```

Build the docker image:
```sh
docker build -t ls4ai .

```

Run the docker container and expose the port `8888`:
```sh
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work ls4ai
```
