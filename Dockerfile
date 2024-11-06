FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy necessary files to container
COPY . /app

# Install necessary packages
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Download the Rasa model from Google Drive
RUN apt-get update && apt-get install -y wget && \
    wget -O model.tar.gz "https://drive.google.com/uc?export=download&id=1weh4gKSiZsXQyGxaTqrmOw_bFtESJuUm" && \
    mkdir -p models && tar -xzf model.tar.gz -C models

# Expose port for Heroku
ENV PORT 8000
EXPOSE 8000

# Run the Rasa server
CMD ["rasa", "run", "-m", "models", "--enable-api", "--cors", "*", "--port", "8000"]
