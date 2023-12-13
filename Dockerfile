FROM python:3.11
LABEL org.opencontainers.image.authors="andreas@sauerwein.se"
COPY pyproject.toml .
COPY poetry.lock .
RUN pip install poetry 
RUN poetry config virtualenvs.create false
RUN poetry install --only main