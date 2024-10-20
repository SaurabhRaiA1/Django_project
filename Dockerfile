FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt /app
COPY icoder /app

RUN sudo /usr/bin/pip3 install --prefix /usr  -r requirements.txt && \
    cd /

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
