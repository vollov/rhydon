FROM ubuntu:vollov

RUN mkdir -p /app
WORKDIR /app

# RUN apt-get update && apt-get install -y gcc gettext libmysqlclient-dev

# Copy the current directory contents into the container at /app
ADD . /app

RUN pip install -r requirements.txt

# VOLUME /d0/www/tiger/logs

EXPOSE 8028

CMD ["/app/start.sh"]
