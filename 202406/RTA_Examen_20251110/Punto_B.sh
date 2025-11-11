sudo adduser matias
sudo usermod -aG sudo matias
su - matias
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
cd ~/RTA_Examen_$(date +%Y%m%d)
nano Punto_B.sh
chmod +x Punto_B.sh
./Punto_B.sh
