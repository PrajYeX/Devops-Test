FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Run the command to start the application when the container starts
CMD ["python", "app.py"]