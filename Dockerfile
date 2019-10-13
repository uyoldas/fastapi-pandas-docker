FROM uyoldas/uvicorn-gunicorn

RUN echo "http://dl-8.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
  && apk update \
  && apk add py3-numpy py3-pandas

RUN pip install fastapi

COPY ./app /app

