# El Dockerfile es el archivo que contiene las isntrucciones para construir una imagen
# Imagen → lo que construyes
# Contenedor → lo que ejecutas

#Base image
FROM python:3.13-slim

#Set the environments variables

#para que no chequee las versiones de pip
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
#para que no genere los .pyc
ENV PYTHONDONTWRITEMYTECODE 1
#para que desactive el almacenamiento en buffer para que la salida sea mas rapida
ENV PYTHONUNBUFFERED 1

# Set the work environment
#facilita la ejecucion de comandos en ese drectorio en especifico
WORKDIR /code

#Instalar dependencias
#le decimos que copie el requirements.txt al WORKDIR
COPY ./requirements.txt .
RUN pip install -r requirements.txt


#copiar el proyecto
# le estamos diciendo que todo nuestro proyecto lo copie en en WORKDIR
COPY . . 
