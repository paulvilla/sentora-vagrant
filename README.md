# sentora-vagrant
Instalación de Sentora en CentOS 7 en Virtual Box con vagrant

USO
=====
Instalación
-----
1. Instalar Vagrant
2. Por seguridad a posibles fallos vamos a lanzar el siguiente comando:
```json
vagrant plugin install vagrant-vbguest
```
3. Descargaremos el repositorio y lo movemos a tu carpeta de usuario.
4. No movemos a dicha carpeta
5. Lazaremos el siguiente comando:
```json
vagrant up
```
6. En tu archivo host añadiremos la siguiente linea:
```json
windows: 
  192.168.33.10          cpanel.sentora.dev
  192.168.33.10           sentora.dev
Linux:
  ................
```

Con esto ya tendriamos funcionando todo con la carpeta compartida y la conexión desde nuestro navegador.

Usos externos de repositorios
=====
Box
-----
He utilizado la caja creada de CentOS 7 del siguiente repositorio asta nuevas creaciones:
https://github.com/CommanderK5/packer-centos-template
