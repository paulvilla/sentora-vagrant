Vagrant.configure(2) do |config|
config.vm.box = "centos7-sentora"
config.vm.network "private_network", ip: "192.168.33.10"
config.vm.network "public_network", ip: "192.168.1.10"
config.vm.box_url = "https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box"
config.vm.synced_folder ".", "/var/sentora/hostdata",
	create: "true",
	type: "nfs",
	mount_options: ["dmode=777", "fmode=666"]
config.vm.provider "virtualbox" do |vb|
	vb.name = "CentOS 7 - Sentora"
	v.cpus = "1"
	vb.memory = "2048"
	vb.gui = false
end

config.vm.provision "shell", inline: <<-SHELL
wget http://sentora.org/install -O sentora_install.sh
chmod +x sentora_install.sh
yum -y update
yum -y remove bind
./sentora_install.sh -t Europe/Madrid -d cpanel.sentora.dev -i 192.168.33.10
echo "============================================="
echo "======== PASSWORDS DEL PANEL SENTORA ========"
echo "============================================="
cat /root/passwords.txt
echo "============================================="
echo "============================================="
echo "============================================="
exit
SHELL
end
