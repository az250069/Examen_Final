FROM jenkins/jenkins:lts

# Cambiar a usuario root
USER root

# Instalar Python y pandas
RUN apt-get update && \
    apt-get install -y python3 python3-pandas python3-numpy && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Volver al usuario jenkins
USER jenkins