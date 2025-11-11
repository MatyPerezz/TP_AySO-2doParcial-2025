sudo adduser matias
sudo usermod -aG sudo matias
su - matias
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
cd ~/RTA_Examen_$(date +%Y%m%d)
nano Punto_B.sh
chmod +x Punto_B.sh
./Punto_B.sh

sudo groupadd grupo_dev
sudo groupadd grupo_test
sudo groupadd grupo_ops
sudo useradd -m -G grupo_dev usuario1
sudo useradd -m -G grupo_test usuario2
sudo useradd -m -G grupo_ops usuario3
sudo mkdir -p /work/devteam /work/testteam /work/opsteam
sudo chown usuario1:grupo_dev /work/devteam
sudo chown usuario2:grupo_test /work/testteam
sudo chown usuario3:grupo_ops /work/opsteam
sudo chmod 770 /work/devteam
sudo chmod 750 /work/testteam
sudo chmod 700 /work/opsteam
sudo -u usuario1 touch /work/devteam/dev1.txt
sudo -u usuario2 touch /work/testteam/test1.txt
sudo -u usuario3 touch /work/opsteam/ops1.txt
ls -l /work
ls -l /work/devteam
ls -l /work/testteam
ls -l /work/opsteam
