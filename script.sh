<<-EOF
#!/bin/bash
yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo yum install unzip -y
sudo systemctl start unzip
sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page292/honey.zip
unzip '*.zip'
cd */
sudo cp -a . /var/www/html
EOF