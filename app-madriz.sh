#!/bin/bash

# Actualizando el sistema
yum update -y

# Instalando apache
yum install -y httpd

# Iniciando apache
systemctl start httpd

# Configurar Apache para que se inicie al arrancar
systemctl enable httpd

# Instalar AWS CLI
yum install -y aws-cli

# Descargar archivo HTML desde el bucket S3
aws s3 cp s3://app-web-madriz/index.html /var/www/html/index.html

# Reiniciar Apache para aplicar los cambios
systemctl restart httpd

