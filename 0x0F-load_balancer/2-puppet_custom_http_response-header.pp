# Http header

exec { 'Http_Header':
  command  => 'sudo apt-get update -y; sudo apt-get install nginx -y; sudo sed -i "36i\ add_header X-Served-By \$HOSTNAME;" /etc/nginx/sites-available/default; sudo service haproxy restart',
  provider => shell,
}