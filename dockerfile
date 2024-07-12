FROM python:3.9-alpine

WORKDIR /app
COPY ./requirements.txt .

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN apk add --no-cache postgresql-libs \
 && apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev \
 && python3 -m pip install -r /app/requirements.txt --no-cache-dir \
 && apk --purge del .build-deps

COPY . /app

# FastAPIの起動
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
