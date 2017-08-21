FROM python:2.7.11-alpine

# Install deps.
ADD repositories /etc/apk/repositories
RUN apk add --update python bash  python-dev py-pip build-base py-numpy@community
# Create working directory
RUN mkdir /app

# Define default command.
ENTRYPOINT ["bash"]
# Define working directory.
WORKDIR -p /app
