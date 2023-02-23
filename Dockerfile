FROM python:3.9

RUN mkdir /src
WORKDIR /src
COPY ./requirements.txt /src/requirements.txt

RUN apt-get update
RUN pip install -r /src/requirements.txt
COPY ./app /src/app

# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
