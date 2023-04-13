# Parent image official python runtime
FROM python:3.8
WORKDIR /app
ADD . /app

# Update package manager
RUN apt-get update
RUN apt-get -y update && apt-get install -y \
  curl \
  less \
  sudo \
  python3-dev \
  python-dev \
#  unixodbc \
#  unixodbc-dev \
  build-essential #&& rm -rf /var/lib/apt/lists/*

RUN apt-get install screen -y
#RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
#RUN curl curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update
#RUN ACCEPT_EULA=Y apt-get install -y msodbcsql17

#ENV AWS_DEFAULT_REGION=
#ENV AWS_ACCESS_KEY_ID=
#ENV AWS_SECRET_ACCESS_KEY=

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# run app
CMD ["python", "app.py"]