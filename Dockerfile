FROM ubuntu

RUN apt-get update

RUN apt-get upgrade

# Install Python Setuptools
RUN apt-get install -y python-setuptools

#RUN apt-get install python-dev

# Install pip
RUN easy_install pip

# Install requirements.txt
ADD requirements.txt /src/requirements.txt
RUN cd /src; pip install -r requirements.txt

# Add the Flask App
ADD . /src

# EXPOSE PORT
EXPOSE 5000

# Run the Flask APP
CMD python src/app.py
