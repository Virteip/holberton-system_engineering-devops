# Web Stack debug
exec { 'task1 increase limit':
  command  => 'sudo sed -i "s/hard nofile 5/hard nofile 50000/" /etc/security/limits.conf;\
	sudo sed -i "s/soft nofile 4/soft nofile 40000/" /etc/security/limits.conf',
  provider => 'shell',
  path     => ['/usr/bin', '/bin'],
  returns  => [0, 1]
}
