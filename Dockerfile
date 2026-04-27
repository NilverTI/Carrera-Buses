FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN useradd -m appuser

WORKDIR /app

RUN chown -R appuser:appuser /app

USER appuser

CMD ["python", "buses.py"]