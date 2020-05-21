# Debug Wordpress

exec { 'debugging':
  environment => ['DIR=/var/www/html/wp-settings.php'],
  command     => 'sudo sed -i "s/phpp/php/" $DIR',
  path        => ['/usr/bin', '/bin'],
  returns     => [0, 1]
}