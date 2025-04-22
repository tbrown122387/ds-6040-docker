# syntax=docker/dockerfile:1
FROM --platform=linux/ppc64le python:3.11.5-bookworm

# Install system dependencies including Fortran
RUN apt-get update && apt-get install -y \
    gfortran \
    wget \
    build-essential \
    meson \
    ninja-build \
    cmake \
    libopenblas-dev \
    pkg-config

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN apt-get update

RUN install_cmdstan

RUN ls -F ~/.cmdstan

WORKDIR /bml24

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0","--allow-root", "--no-browser"]


