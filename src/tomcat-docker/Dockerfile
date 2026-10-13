# Usar la imagen oficial de Tomcat
FROM tomcat
# FROM tomcat:10-jdk17

# Copiar nuestra app al directorio webapps
COPY ./guess-number/guess-number.war /usr/local/tomcat/webapps/ROOT.war

# Exponer el puerto 8080
EXPOSE 8080