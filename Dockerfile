FROM python:3.9.7-slim

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT ["python"]

CMD ["app.py"]
