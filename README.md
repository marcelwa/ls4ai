# Hack4Her: Logic Synthesis for AI

This repo contains hands-on material for the "Logic Synthesis for AI" tutorial session at [Hack4Her](https://hack4her.org/).

## 🛠️ Setup

Clone this repository:

```sh
git clone https://github.com/marcelwa/ls4ai.git
```

### 🐳 Option 1: Run Inside a Docker Container (recommended)

#### Set up Docker Desktop

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

### 💻 Option 2: Run Locally

Download the Jupyter notebook `ls4ai.ipynb` and run it locally on your preferred platform.

1. Install Python and Jupyter Notebook using Anaconda, Homebrew, pip, or the package manager of your choice.
2. Open Command Prompt, PowerShell, or Terminal.
3. Navigate to the directory where `ls4ai.ipynb` is located.
4. Start Jupyter Notebook:
   ```sh
   jupyter notebook
   ```

*⚠️ Note: When run locally, Verilog simulation/validation might only work under Linux.*

## 🚀 Usage

### 📓 Accessing the Jupyter Notebook

Open your web browser and navigate to [`http://localhost:8888`](http://localhost:8888). You should see the Jupyter interface where you can open and run the `ls4ai.ipynb` notebook.

If you are prompted for a token, check the terminal output where you started the Docker container. You are looking for something like this:
```
 To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
    Or copy and paste one of these URLs:
        http://<hostname_or_ip>:8888/lab?token=<YOUR_TOKEN_HERE>
        http://127.0.0.1:8888/lab?token=<YOUR_TOKEN_HERE>
```
Either copy the token from the URL to paste it into the prompt, or simply follow the link to open the Jupyter Notebook interface.

### ▶️ Running the Tutorial

Open the `ls4ai.ipynb` notebook in Jupyter and follow the instructions in the notebook to run the tutorial. The notebook contains code cells that you can execute step by step, along with explanations and comments.
It demonstrates how to use the NNgen tool to synthesize a neural network, generate Verilog code, and simulate it using Verilator. Furthermore, it contains 

*⚠️ Note: The code snippet `(Alternative) Import an Existing Model on a DNN Framework via ONNX` is intended as a pointer for your self-study after the tutorial. It is not executable by default because you would have to modify the subsequent code to match the imported model!*

## 📚 Additional Resources

To help you get started and make the most out of this project, here are some useful resources:

- [Docker Official Documentation](https://docs.docker.com/get-started/): Comprehensive guide to getting started with Docker, including installation, building images, and managing containers.
- [Jupyter Notebook Documentation](https://jupyter-notebook.readthedocs.io/en/stable/): Official documentation for Jupyter Notebook, including installation instructions, tutorials, and usage guides.
- [NNgen](https://github.com/NNgen/nngen): The tool for neural network synthesis used in this tutorial. You can find further information about its features in the repo's README.
- [Veriloggen](https://github.com/PyHDI/veriloggen): A Python package for generating synthesizable Verilog code, which is used in this tutorial.
- [Verilator](https://www.veripool.org/verilator/): A fast Verilog simulator that is used in this tutorial to validate the generated Verilog code.
- [Verilog to Routing (VTR)](https://verilogtorouting.org/): A CAD flow for converting Verilog to FPGA bitstreams. It represents a logical next step after synthesis for targeting FPGAs (especially academic ones) but is not used directly in this tutorial. This pointer is included for those interested in further exploring FPGA design workflows.

## 📧 Contact

If you have any questions or feedback, please reach out via email.
