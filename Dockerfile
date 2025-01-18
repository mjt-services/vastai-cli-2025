# Use the official Python image as the base
FROM python:3.9-slim

# Set environment variables to prevent Python from writing .pyc files and buffering stdout/stderr
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install necessary system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Vast.ai CLI
RUN pip install --no-cache-dir vastai

# Create a non-root user to run the application
RUN useradd -ms /bin/bash vastuser

# Set the working directory
WORKDIR /home/vastuser

# Switch to the non-root user
USER vastuser

# Entry point to keep the container running
CMD ["bash"]
