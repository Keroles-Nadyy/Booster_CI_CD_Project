FROM ubuntu

RUN apt update -y
# RUN apt install software-properties-common && apt-get update -y
# RUN add-apt-repository ppa:deadsnakes/ppa


# RUN apt install python3.6 -y && apt intall pip3
RUN apt install python3 -y && apt intall pip -y

COPY . .

RUN pip3 install -r requirements.txt
RUN python3.6 manage.py makemigrations
RUN python3.6 manage.py migrate

CMD ["python3.6", "manage.py", "runserver", "0.0.0.0:8000"]