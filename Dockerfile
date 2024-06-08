# Use the jupyter/scipy-notebook as the base image
FROM jupyter/scipy-notebook
LABEL authors="Marcel Walter"

# Switch to root user to install additional packages
USER root

# Install additional packages using apt-get
RUN apt-get update && apt-get install -y \
    iverilog \
    verilator \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Python packages using pip
RUN pip install --no-cache-dir \
    torch torchvision veriloggen numpy onnx nngen np

# Copy files from the host machine into the container
COPY ./ls4ai.ipynb /home/jovyan/work/

# Switch back to the jovyan user
USER $NB_UID

# Set the working directory
WORKDIR /home/jovyan/work

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Start Jupyter Notebook
CMD ["start-notebook.sh"]


ENTRYPOINT ["top", "-b"]
