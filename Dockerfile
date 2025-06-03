# Use official Python base image (This is the OS + Python environment)
FROM python:3.9-slim

# Set working directory inside the container to "/app". All file operations will happen here
WORKDIR /app

# Copies local files to the container
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .


# Specifies the command to run when the container starts. Here, it runs the Flask app
CMD ["python", "app.py"]
