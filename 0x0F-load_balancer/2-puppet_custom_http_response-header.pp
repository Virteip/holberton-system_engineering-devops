#Http header

exec { 'Custom_HttpHeader':
  command  => 'sudo apt-get update; sudo apt-get install nginx -y; sudo sed -i "36i\ add_header X-Served-By \$HOSTNAME;"\
  /etc/nginx/sites-enabled/default; sudo service haproxy start',
  provider => shell,
}