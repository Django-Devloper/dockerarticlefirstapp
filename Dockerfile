# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install --no-cache-dir Flask

# Expose port 8000
EXPOSE 8000

# Run app.py when the container launches
CMD ["python", "app.py"]

