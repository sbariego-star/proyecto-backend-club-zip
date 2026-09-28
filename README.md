# sistema de Reservas de Club Deportivo

API REST desarrollada con Python y Flask.

## Ejecutar

1. Instalar Python 3.
2. Abrir esta carpeta en VS Code.
3. Abrir una terminal en VS Code.
4. Ejecutar:

    python -m venv .venv

5. Activar el entorno virtual en Windows:

    .venv\Scripts\activate

6. Instalar Flask:

    pip install -r requirements.txt

7. Ejecutar:

    python app.py

La API queda disponible en:

    http://127.0.0.1:5000

## Endpoints obligatorios implementados

- GET /deportes
- GET /canchas
- POST /canchas
- GET /canchas/{id}
- PATCH /canchas/{id}
- DELETE /canchas/{id}
- GET /canchas/disponibles
- GET /socios
- POST /socios
- GET /socios/{id}
- PATCH /socios/{id}
- GET /reservas
- POST /reservas
- GET /reservas/{id}
- PUT /reservas/{id}/estado

## Base de datos

La primera ejecución crea `club.db` automáticamente y carga los deportes iniciales.

## Importante

El archivo swagger.yaml debe mantenerse como contrato del proyecto.
