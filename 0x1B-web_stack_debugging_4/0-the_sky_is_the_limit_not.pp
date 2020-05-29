# Web Stack debug
exec { 'task0':
  command     => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 15000\"/" /etc/default/nginx; sudo service nginx restart',
  path        => ['/usr/bin', '/bin'],
  returns     => [0, 1]
}
