FROM python:3.7-slim
COPY . /app
WORKDIR app/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python","app/app.py"]

#docker build -t fprintes/teste_flask .
#docker run -p 5000:5000 -v "/home/felipe/PycharmProjects/docker-flask:/var/www" -w "/var/www" fprintes/teste_flask
#docker run -p 5000:5000 -v "$(pwd):/app" fprintes/teste_flask