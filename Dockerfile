# syntax=docker/dockerfile:1

FROM python:3.11.5-bookworm

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN apt-get update

RUN install_cmdstan

RUN ls -F ~/.cmdstan

WORKDIR /bml24

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0","--allow-root"]


