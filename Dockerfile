FROM python:3.8

LABEL maintainer="ari -- follow me on dev.to https://dev.to/ari_hacks"

COPY requirements.txt .
RUN pip3 install -r requirements.txt

EXPOSE 80

COPY ./app /app

CMD ["uvicorn", "--host", "0.0.0.0", "--port", "80", "app.main:app"]