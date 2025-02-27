FROM python:3.9

WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
EXPOSE 8000
COPY . .
CMD ["fastapi", "run", "server.py", "--port", "8000"]
