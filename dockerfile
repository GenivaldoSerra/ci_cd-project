FROM python:3.12-slim

RUN pip install poetry

WORKDIR /app

COPY ./pyproject.toml /app/
RUN poetry install --no-root

COPY app/ app/

EXPOSE 5000

CMD [ "poetry", "run", "app/app.py" ]