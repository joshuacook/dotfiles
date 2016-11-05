adduser joshuacook
usermod -aG sudo joshuacook
usermod -aG docker joshuacook
cp -r /root/.ssh/ /home/joshuacook/
chown joshuacook:joshuacook /home/joshuacook/.ssh/
cp /home/joshuacook/.ssh/authorized_keys /home/joshuacook/.ssh/id_rsa
# copy logins from lastpass
curl -L https://github.com/docker/machine/releases/download/v0.8.2/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine
sudo apt-get install parallel
