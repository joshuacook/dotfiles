adduser joshuacook
usermod -aG sudo joshuacook
usermod -aG docker joshuacook
cp -r /root/.ssh/ /home/joshuacook/
chown joshuacook:joshuacook /home/joshuacook/.ssh/
