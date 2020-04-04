# Http header
exec { 'Http_Header':
  command  => 'sudo sed -i "33i\      add_header X-Served-By \$HOSTNAME;" /etc/nginx/sites-available/default; sudo service haproxy restart',
  provider => shell,
}