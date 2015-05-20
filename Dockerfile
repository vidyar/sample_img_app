FROM ubuntu

RUN apt-get update

# Add the Flask App
ADD . /src

# EXPOSE PORT
EXPOSE 5000

