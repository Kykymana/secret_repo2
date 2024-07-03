FROM python:3.9

WORKDIR /code
#RUN apk update
#RUN apk add --no-cache py3-virtualenv 
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
EXPOSE 8000
COPY . .
CMD ["fastapi", "run", "server.py", "--port", "8000"]
