FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /projects
COPY . /projects
WORKDIR /projects
RUN pip install -r requirements.txt
CMD python manage.py migrate & python manage.py runserver 0.0.0.0:8000
