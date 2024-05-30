FROM python:3.10-slim

WORKDIR /app/backend

RUN pip install poetry

COPY pyproject.toml poetry.lock* ./

RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

COPY code/. ./

EXPOSE 80 443