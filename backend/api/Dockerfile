FROM python:3
ENV PYTHONUNBUFFERED 1

RUN apt update
WORKDIR /api
COPY . /api/
RUN pip install --upgrade pip\
    && pip install --upgrade setuptools\
    && pip install -r requirements.txt
