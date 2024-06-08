# Hack4Her: Logic Synthesis for AI

This repo contains hands-on material for the "Logic Synthesis for AI" tutorial session at [Hack4Her 2024](https://hack4her.github.io/).

## Setup

Clone this repository:

```sh
git clone https://github.com/marcelwa/ls4ai.git
```

### Option 1: Run Locally

Download the Jupyter notebook `ls4ai.ipynb` and run it locally on your preferred platform.

1. Install Python and Jupyter Notebook using Anaconda, Homebrew, pip, or the package manager of your choice.
2. Open Command Prompt, PowerShell, or Terminal.
3. Navigate to the directory where `ls4ai.ipynb` is located.
4. Start Jupyter Notebook:
   ```sh
   jupyter notebook
   ```

*Note: Verilog simulation/validation might only work under Linux.*


### Option 2: Run Inside a Docker Container

#### Setup Docker Desktop

Follow the installation instructions for your operating system:
- [Windows](https://docs.docker.com/desktop/install/windows-install/)
- [macOS](https://docs.docker.com/desktop/install/mac-install/)
- [Linux](https://docs.docker.com/desktop/install/linux-install/) (or simply use the terminal-based Docker daemon)

Make sure Docker Desktop is running.

#### Build the docker image:
```sh
docker build -t ls4ai .

```

#### Run the docker container and expose the port `8888`:
```sh
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work ls4ai
```

## Usage

Open your web browser and navigate to [`http://localhost:8888`](http://localhost:8888). You should see the Jupyter interface where you can open and run the `ls4ai.ipynb` notebook.

## Additional Resources

To help you get started and make the most out of this project, here are some useful resources:

- [Docker Official Documentation](https://docs.docker.com/get-started/): Comprehensive guide to getting started with Docker, including installation, building images, and managing containers.
- [Jupyter Notebook Documentation](https://jupyter-notebook.readthedocs.io/en/stable/): Official documentation for Jupyter Notebook, including installation instructions, tutorials, and usage guides.


## Contact

If you have any questions or feedback, please reach out via email.
