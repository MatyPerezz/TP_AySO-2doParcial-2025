cd ~/repogit/UTN-FRA_SO_Examenes/202406/ansible
ls -la
chmod +x script_ansible.sh
sudo ./script_ansible.sh
ansible --version
ansible all -m ping -i inventory
