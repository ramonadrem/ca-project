# Add a base image to build this image off of
FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY . /ca-project/
RUN pip install --no-cache-dir -r /ca-project/requirements.txt

# To add a default port containers from this image should expose
EXPOSE 5000

# To add a default command for the image
CMD ["python", "/ca-project/run.py"]

# Run the application in Docker
