#!/usr/bin/python3

from flask import Flask, render_template
import random

app = Flask(__name__)

data = ["doc1", "doc2", "doc3", "doc4", "doc5"]

@app.route('/')

def index():
    doc = random.choice(data)
    return render_template('index.html', doc=doc)

if __name__ == "__main__":
    app.run(host="0.0.0.0")
