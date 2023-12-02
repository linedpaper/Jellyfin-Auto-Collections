# Use an official Python runtime as a base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /config

# Clone the Jellyfin-Auto-Collections repository
RUN git clone https://github.com/linedpaper/Jellyfin-Auto-Collections.git .

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port if your application requires it
# EXPOSE 8080

# Set environment variables if needed
# ENV VARIABLE_NAME=value

# Define the command to run your application
CMD ["python", "your_main_script.py"]
