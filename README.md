# sentora-vagrant
Instalación de Sentora en CentOS 7 en Virtual Box con vagrant

1. Instalar Vagrant
2. Por seguridad a posibles fallos vamos a lanzar el siguiente comando:
vagrant plugin install vagrant-vbguest
3. Descargaremos el repositorio y lo movemos a tu carpeta de usuario.
4. No movemos a dicha carpeta
5. Lazaremos el siguiente comando:
vagrant up
6. En tu archivo host añadiremos la siguiente linea:
windows: 
  192.168.33.10          cpanel.sentora.dev
  192.168.33.10           sentora.dev
Linux:
  ................

Con esto ya tendriamos funcionando todo con la carpeta compartida y la conexión desde nuestro navegador.
