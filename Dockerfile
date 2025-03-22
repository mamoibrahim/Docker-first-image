# Use an official Python image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy required files
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app /app

# Define the command to run the app
CMD ["python", "main.py"]
