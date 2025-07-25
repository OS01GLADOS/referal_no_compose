FROM python:3.11.9 as compile-image

RUN python -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1


COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /app

COPY . /app/

CMD ["sh", "entrypoint.sh"]
