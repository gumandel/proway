FROM python:3.11-slim
WORKDIR /app
RUN apt-get update -y && apt-get install -y python3-dev libpq-dev gcc
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD '/app/startup.sh'