FROM python:3.9

# We copy just the requirements.txt first to leverage Docker cache
COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app
ENV FLASK_APP="hello_goose.py"

CMD [ "flask" "run -h 0.0.0.0 -p 8080" ]
