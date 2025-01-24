
# #!/bin/bash
# sudo su
# yum update -y
# yum install httpd -y
# systemctl start httpd
# systemctl enable httpd
# echo "<html><head><style>body { background-color: purple; color: white; }</style></head><body><h1><p> Welcome to Utrains.<br> You are redirected to ${HOSTNAME} to see how the load balancer is sharing the traffic.</p></h1></body></html>" > /var/www/html/index.html


#!/bin/bash
sudo yum install wget httpd mysql php php-mysql -y
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz
sudo cp -r wordpress/* /var/www/html
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
sudo cd /var/www/html
sudo cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sudo chown -R apache:apache /var/www/html
sudo systemctl start httpd 
sudo systemctl enable httpd