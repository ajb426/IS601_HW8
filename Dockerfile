FROM python:3.8-slim

WORKDIR /app
COPY app.py /app
COPY test_app.py /app

RUN pip install pytest

CMD ["pytest", "test_app.py"]
