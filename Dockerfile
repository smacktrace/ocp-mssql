###########################
# OpenShift Microsoft SQL #
###########################

FROM mcr.microsoft.com/mssql/server:2019-CTP2.2-ubuntu

ADD get-pip.py /tmp/get-pip.py

RUN apt-get -y update && \ 
        apt-get install -y  apt-file && \
        apt-file update -y

RUN apt-get -y install vim

RUN python /tmp/get-pip.py

RUN pip install opencensus

RUN useradd -r -u 1002 appuser
USER appuser
