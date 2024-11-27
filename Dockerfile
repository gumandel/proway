FROM python:3.11-slim
COPY . /app
WORKDIR /app
EXPOSE 8000
RUN apt-get update -y && apt-get install -y python3-dev libpq-dev gcc
RUN pip install -r requirements.txt
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]