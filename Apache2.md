# Apache

## SSL Activado

__Instalar Apache2 OpenSSL__

```bash 
# apt install apache2 openssl
```

__Activar SSL Apache2__

```bash 
# a2enmod ssl
```

__Reiniciar Apache2__

```bash 
# systemctl restart apache2
```

__Generar Certificado OpenSSL__

```bash 
# cd

# openssl genrsa -out sitio.key 2048

# openssl req -new -key sitio.key -out sitio.csr

# Llenar los datos FQDN : potosi.com

# openssl x509 -req -days 365 -in sitio.csr -signkey sitio.key -out sitio.crt
```

__Copiar Archivos__

```bash 
# cp sitio.key /etc/ssl/certs/

# cp sitio.crt /etc/ssl/certs/
```

__Activar VirtualHost__

```bash 
# nano /etc/apache2/sites-avalible/000-default.conf
```

```html
<VirtualHost *:80>
        ServerName sub.dominio.bo
        Redirect permanent / https://sub.dominio.bo
</VirtualHost>

<VirtualHost *:443>
        ServerAdmin webmaster@localhost
        ServerName sub.dominio
        DocumentRoot /home/bett0/html/dominio/

        SSLEngine       on
        SSLCertificateFile      /etc/ssl/certs/sitio.crt
        SSLCertificateKeyFile   /etc/ssl/certs/sitio.key
</VirtualHost>
```


## VirtualHost

__Activar VirtualHost__

```bash 
# touch /etc/apache2/sites-avalible/misitio.bo.conf
```

```html
<VirtualHost *:80>
        Alias /pagina /home/bett0/html/dominio/public/
        ServerAdmin webmaster@localhost
        ServerName dominio.bo
        DocumentRoot /home/bett0/html/dominio/
</VirtualHost>
```

```bash 
# a2ensite /etc/apache2/sites-avalible/misitio.bo.conf

#  a2dissite /etc/apache2/sites-avalible/misitio.bo.conf
```

