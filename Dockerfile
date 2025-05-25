# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
# This copies app/app.py into /app/app.py
COPY app/app.py .

# Install any needed packages specified in requirements.txt (if you had any)
# For this simple app, we just need Flask.
# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install Flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
# CMD specifies the command to run when the container starts
CMD ["python", "app.py"]

