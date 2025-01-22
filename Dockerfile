FROM python:3.7
RUN pip install pipenv
WORKDIR /src/app
COPY Pipfile Pipfile.lock ./
RUN pipenv install --deploy --system
COPY . .
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]