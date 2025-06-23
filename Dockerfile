FROM public.ecr.aws/docker/library/python:3.9-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
