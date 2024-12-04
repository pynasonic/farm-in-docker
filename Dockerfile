FROM python:3.12-slim

WORKDIR /app
COPY ./app /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
ENV NAME World
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80","--reload"]