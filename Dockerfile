FROM ubuntu:14.04
MAINTAINER Pranay Kanwar <pranay.kanwar@gmail.com>
RUN apt-get update -y && apt-get install -y python-pip python-dev build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
