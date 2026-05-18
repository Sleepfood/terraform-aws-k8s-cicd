FROM python:3.14-alpine

WORKDIR /app

COPY /app .

RUN pip install -r requirements.txt

EXPOSE 1447

CMD ["python", "main.py"]
