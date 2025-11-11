cd ~/repogit/UTN-FRA_SO_Examenes/202406/docker
ls -la
chmod +x script_docker.sh
sudo ./script_docker.sh
sudo docker ps -a
sudo docker exec -it nginx_examen bash
ls /usr/share/nginx/html
exit
