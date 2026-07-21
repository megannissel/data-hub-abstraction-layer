FROM python:3.14

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY src/ .
ENV API_ROOT_PATH="/dhal"

CMD ["fastapi", "run", "dhal_api/main.py", "--host", "0.0.0.0", "--port", "80"]
