from flask import Flask
from prometheus_flask_exporter import PrometheusMetrics


app = Flask(__name__)
metrics = PrometheusMetrics(app)


@app.route("/")
def hello_world():
    return "Olá, mundo!"
