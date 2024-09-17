# Use the CUDA image with cuDNN support
FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04

# Install any additional dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-dev \
    libglib2.0-0 \
    python3-pip \
    python3-dev 

# Install any Python packages
RUN pip3 install --upgrade pip

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . /app

RUN pip3 install --no-cache-dir -r requirements_gpu.txt

# # Set the command to run your application
CMD ["python3", "detect.py", "--weights", "yolov7.pt", "--source", "inference/images/horses.jpg"]