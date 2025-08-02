FROM python:3.9-slim

WORKDIR /app

# Install system dependencies for PyAudio, ffmpeg, etc.
RUN apt-get update && apt-get install -y \
    build-essential \
    pkg-config \
    git \
    curl \
    libasound2-dev \
    libportaudio2 \
    libportaudiocpp0 \
    portaudio19-dev \
    libsndfile1 \
    ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install uv (requires curl or wget)
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Ensure uv is in PATH (add /root/.cargo/bin if necessary)
ENV PATH="/root/.cargo/bin:$PATH"

# Copy and modify requirements to exclude pyaudio
COPY requirements.txt .
RUN grep -v "pyaudio" requirements.txt > requirements_no_pyaudio.txt

# Install Python dependencies using uv
RUN uv pip install --system --upgrade pip && \
    uv pip install --system -r requirements_no_pyaudio.txt && \
    uv pip install --system --no-build-isolation "pyaudio==0.2.13"

# Copy application code
COPY . .

# Expose the port the app runs on
EXPOSE 7860

# Command to run the application
CMD ["python", "main.py"]
