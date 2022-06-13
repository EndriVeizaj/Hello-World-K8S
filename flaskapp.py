import json
import logging
import uuid
import os
from flask import Flask, request

app = Flask(__name__)

@app.route("/hello", methods = ['GET'])
def say_hello():
    return "Hello World!"

if __name__ == '__main__':
    app.run(debug = True, host = '0.0.0.0', port = 5000)