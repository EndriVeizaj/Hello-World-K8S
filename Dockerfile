FROM python:3.8

EXPOSE 5000


ENV PYTHONDONTWRITEBYTECODE=1


ENV PYTHONUNBUFFERED=1


COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app


RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser


CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
