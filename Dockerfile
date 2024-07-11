FROM python:3.8-slim

WORKDIR /app
COPY app/ /app/app
COPY tests/ /app/tests

RUN pip install pytest

CMD ["pytest", "tests/test_app.py"]
