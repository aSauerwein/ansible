FROM python:3.11
LABEL org.opencontainers.image.authors="andreas@sauerwein.se"
COPY pyproject.toml poetry.lock .
RUN pip install poetry && poetry install --no-root --no-directory