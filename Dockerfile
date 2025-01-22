# Dockerfile for https://github.com/lidorg-dev/final-python

FROM python:3.7

RUN pip install pipenv

COPY Pipfile Pipfile.lock ./

WORKDIR /src/app

RUN Pipenv install --deploy --system

COPY . .

EXPOSE 5000

ENTRYPOINT ["python", "app.py"]
