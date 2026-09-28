from flask import Flask
from db import init_db
from routes.deportes import deportes_bp
from routes.canchas import canchas_bp
from routes.socios import socios_bp
from routes.reservas import reservas_bp

app = Flask(__name__)

# Crea las tablas y carga los deportes iniciales si todavía no existen.
init_db()

app.register_blueprint(deportes_bp)
app.register_blueprint(canchas_bp)
app.register_blueprint(socios_bp)
app.register_blueprint(reservas_bp)


@app.get("/")
def inicio():
    return {
        "mensaje": "API de Reservas de Club Deportivo funcionando"
    }, 200


if __name__ == "__main__":
    app.run(debug=True)