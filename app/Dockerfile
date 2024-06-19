FROM python:alpine3.20
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /app 
COPY requirements.txt  .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN adduser --disabled-password --gecos '' django \
    && chown -R django /app
USER django
EXPOSE 8000
CMD [ "python", "manage.py" , "runserver","0.0.0.0:8000" ] 