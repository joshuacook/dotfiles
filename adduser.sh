adduser joshuacook
usermod -aG sudo joshuacook
usermod -aG docker joshuacook
cp -r /root/.ssh/ /home/joshuacook/
chown joshuacook:joshuacook /home/joshuacook/.ssh/
cp /home/joshuacook/.ssh/authorized_keys /home/joshuacook/.ssh/id_rsa
