# paso 1 buscar una imagen base
FROM python:3.12-alpine3.23

# paso 2, crear el directorio de trabajo en el contenedor
WORKDIR /app

# paso 3 copiar el arcchivo de dependencias
COPY requirements.txt /app

# paso 4 instalar las dependencias 
RUN pipp install --no-cache-dir -r requirements.txt

# paso 5 copiar el codigo fuente
COPY app.py /app

# paso 6 exponer el puerto 5000
EXPOSE 5000

# paso 7 ejecutar la aplicacion
CMD ["python", "app.py"]