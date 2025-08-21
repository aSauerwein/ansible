FROM python:3.11
LABEL org.opencontainers.image.authors="andreas@sauerwein.se"
COPY pyproject.toml .
COPY poetry.lock .
RUN pip install poetry==1.8.5
RUN poetry config virtualenvs.create false
RUN poetry install --only main
