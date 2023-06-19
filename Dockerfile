FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD exec gunicorn --bind 0.0.0.0:$PORT --workers 1 app:app