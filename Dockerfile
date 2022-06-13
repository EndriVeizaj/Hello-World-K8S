FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY flaskapp.py flaskapp.py

EXPOSE 5000

ENV FLASK_APP=flaskapp.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV='development'

CMD ["flask", "run","--port=5000"]