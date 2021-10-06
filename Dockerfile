FROM alpine:3.13
RUN apk add --update py3-pip && rm -rf /var/cache/apk/*
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY app.py /usr/src/app/
COPY index.html /usr/src/app/templates/
EXPOSE 5000
CMD ["python3", "/usr/src/app/app.py"]
