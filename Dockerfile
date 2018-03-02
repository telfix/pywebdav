FROM python:3.6.4
MAINTAINER Herbert Rusznak <herbert.rusznak@gmail.com>
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["wsgidav", "--host=0.0.0.0", "--port=80", "--root=/share"]
