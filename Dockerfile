FROM python:3.9

# We copy just the requirements.txt first to leverage Docker cache
COPY ./src/requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app
ENV FLASK_APP=/app/src/hello_goose.py

CMD [ "flask" "run" ]
