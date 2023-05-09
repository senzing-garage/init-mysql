ARG BASE_IMAGE=senzing/senzingapi-runtime:3.5.2
FROM ${BASE_IMAGE}

ENV REFRESHED_AT=2023-05-09

LABEL Name="senzing/init-mysql" \
      Maintainer="support@senzing.com" \
      Version="1.1.4"

# Define health check.

HEALTHCHECK CMD ["/app/healthcheck.sh"]

# Run as "root" for system installation.

USER root

# Install packages via apt.

RUN apt-get update \
 && apt-get -y install \
      gnupg2 \
      libaio1 \
      libodbc1 \
      python3 \
      python3-pip \
      software-properties-common \
      wget \
 && rm -rf /var/lib/apt/lists/*

# MySQL support

RUN wget https://dev.mysql.com/get/Downloads/Connector-ODBC/8.0/mysql-connector-odbc_8.0.20-1debian10_amd64.deb \
 && wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-common_8.0.20-1debian10_amd64.deb \
 && wget http://repo.mysql.com/apt/debian/pool/mysql-8.0/m/mysql-community/libmysqlclient21_8.0.20-1debian10_amd64.deb \
 && apt update \
 && apt -y install \
      ./mysql-connector-odbc_8.0.20-1debian10_amd64.deb \
      ./mysql-common_8.0.20-1debian10_amd64.deb \
      ./libmysqlclient21_8.0.20-1debian10_amd64.deb \
 && rm \
      ./mysql-connector-odbc_8.0.20-1debian10_amd64.deb \
      ./mysql-common_8.0.20-1debian10_amd64.deb \
      ./libmysqlclient21_8.0.20-1debian10_amd64.deb \
 && rm -rf /var/lib/apt/lists/*

# Install packages via PIP.

COPY requirements.txt .
RUN pip3 install --upgrade pip \
 && pip3 install -r requirements.txt \
 && rm /requirements.txt

# Copy files from repository.

COPY ./rootfs /
COPY ./init-mysql.py /app/

# Set environment variables.

ENV LD_LIBRARY_PATH=/opt/senzing/g2/lib:/opt/senzing/g2/lib/debian
ENV PATH=${PATH}:/opt/senzing/g2/python
ENV PYTHONPATH=/opt/senzing/g2/sdk/python
ENV SENZING_DOCKER_LAUNCHED=true

# Make non-root container.

USER 1001:1001

# Runtime execution.

WORKDIR /app
ENTRYPOINT ["/app/init-mysql.py"]
