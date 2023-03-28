
#!/bin/bash
sudo yum install -y httpd
echo ""
echo "[1] httpd installation complete ............................................."
echo ""
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
echo ""
echo "[2] lamp installation complete ............................................."
echo ""
mkdir efs
echo ""
echo "[3] local directory for EFS shared wordpres files created ............................................."
echo ""
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 10.0.3.176:/ efs
echo ""
echo "[4] wordpress files mounted from EFS ............................................."
echo ""
cd ~/efs
echo ""
echo "[5] Entered inside local directory ............................................."
echo ""
sudo cp -r wordpress/* /var/www/html/
echo ""
echo "[6] All shared wordpress files copied to httpd public directory ............................................."
echo ""
sudo service httpd restart
echo ""
echo "[7] httpd server restarted successfully ............................................."
echo ""
