Vagrant.configure(2) do |config|
config.vm.box = "centos7-sentora"
config.vm.network "private_network", ip: "192.168.33.10"
config.vm.network "public_network", ip: "192.168.1.10"
config.vm.box_url = "box/centos7.box"
config.vm.synced_folder ".", "/var/sentora/hostdata",
	create: "true",
	type: "nfs",
	mount_options: ["dmode=777", "fmode=666"]
config.vm.provider "virtualbox" do |vb|
	vb.gui = false
	vb.memory = "2048"
	vb.name = "CentOS 7 - Sentora"
end

config.vm.provision "shell", inline: <<-SHELL
wget http://sentora.org/install -O sentora_install.sh
chmod +x sentora_install.sh
yum -y update
yum -y remove bind
./sentora_install.sh -t Europe/Madrid -d cpanel.sentora.dev -i 192.168.33.10
echo "Ya termino la instalación de la maquina virtual"
exit
SHELL
end