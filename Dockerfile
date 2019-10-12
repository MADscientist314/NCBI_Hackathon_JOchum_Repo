FROM python:3.7-slim
WORKDIR /app
COPY . /app

FROM continuumio/miniconda3
RUN conda update -n base -c defaults conda
RUN conda create -n masq --file /app/masq.yml
RUN echo "source activate masq" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH
