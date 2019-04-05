###########################
# OpenShift Microsoft SQL #
###########################

FROM mcr.microsoft.com/mssql/server:2019-CTP2.2-ubuntu

RUN apt-get install -y pip

RUN useradd -r -u 1002 appuser
USER appuser
