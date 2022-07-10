FROM python:3.8.13-slim-bullseye

ADD https://github.com/Hoffelhas/autodoist/archive/refs/tags/v1.5.tar.gz .

RUN tar -xf v1.5.tar.gz
WORKDIR /autodoist-1.5
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "autodoist.py"]