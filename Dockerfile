FROM python:3.9-slim

WORKDIR /app

# Install system dependencies for PyAudio and other packages
RUN apt-get update && apt-get install -y \
    build-essential \
    pkg-config \
    git \
    libasound2-dev \
    libportaudio2 \
    libportaudiocpp0 \
    portaudio19-dev \
    libsndfile1 \
    ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first to leverage Docker cache
COPY requirements.txt .

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the port the app runs on
EXPOSE 7860

# Command to run the application
CMD ["python", "main.py"]