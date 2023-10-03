FROM python:3.12.0
LABEL org.opencontainers.image.authors="andreas@sauerwein.se"
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
