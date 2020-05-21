# Debug Wordpress

exec { 'debugging':
  command     => 'sudo sed -i "s/phpp/php/" /var/www/html/wp-settings.php',
  path        => ['/usr/bin', '/bin'],
  returns     => [0, 1]
}
