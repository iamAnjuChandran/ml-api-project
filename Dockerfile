# Use an official Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 80

# Start the FastAPI server when the container runs
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
