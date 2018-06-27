FROM alpine:3.5

RUN apk add --update py2-pip
RUN pip install --upgrade pip

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# copy files required for the app to run
COPY app/ /usr/src/app/

# tell the port number the container should expose
EXPOSE 8000

# run the application
CMD ["python", "/usr/src/app/app.py"]

