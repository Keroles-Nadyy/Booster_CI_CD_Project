FROM python:3.6-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN python manage.py makemigrations && python manage.py migrate

CMD ["python3.6", "manage.py", "runserver", "0.0.0.0:8000"]