# Dockerfile.base
FROM python:3.9-slim

# Set a working directory
WORKDIR /app

# Upgrade pip and install required packages
RUN pip install --upgrade pip && \
    pip install faiss-cpu sentence-transformers transformers

# Optionally, clean up cache to keep the image small
RUN rm -rf /root/.cache

# Define an image label (optional)
LABEL maintainer="Adeniyi Aderounmu <teebarg01@gmail.com>"
