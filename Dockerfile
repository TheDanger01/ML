FROM python:3.9

WORKDIR /notebooks

# Instalar dependencias básicas de ML
COPY dependencias.txt .
RUN pip install --no-cache-dir -r dependencias.txt

# Crear directorios necesarios
RUN mkdir -p /notebooks /data

# Exponer el puerto de Jupyter
EXPOSE 8888

# Mantener el contenedor ejecutándose
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=6000", "--allow-root"]