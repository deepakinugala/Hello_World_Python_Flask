FROM ubuntu:latest
COPY . /app
WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python-pip python3-dev build-essential
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]