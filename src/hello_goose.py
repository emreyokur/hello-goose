from socket import gethostname
from flask import Flask, render_template
import os
app = Flask(__name__)

@app.route("/")
def hello_goose():

    hostname = os.environ['HOSTNAME']
    return render_template('index.html.j2', hostname=hostname)
