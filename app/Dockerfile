FROM python:3.10.12-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["gunicorn", "--workers=1", "--threads=4", "--bind", "0.0.0.0", "app:app"]
