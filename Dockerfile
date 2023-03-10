FROM python:3.8

# iReceptor custom changes - we need ZIP
RUN apt-get update; \
    apt-get install -y zip

# add this folder to the Docker image
COPY . /ireceptor

# install python modules
RUN pip install -r /ireceptor/requirements.txt

# set working directory
WORKDIR /root
